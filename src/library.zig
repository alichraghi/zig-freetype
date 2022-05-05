const std = @import("std");
const c = @import("c.zig");
const Face = @import("face.zig");
const Stroker = @import("stroker.zig");
const Error = @import("error.zig").Error;
const checkError = @import("error.zig").checkError;
const mem = std.mem;
const testing = std.testing;

const Library = @This();

pub const LcdFilter = enum(u32) {
    none = c.FT_LCD_FILTER_NONE,
    default = c.FT_LCD_FILTER_DEFAULT,
    light = c.FT_LCD_FILTER_LIGHT,
    legacy = c.FT_LCD_FILTER_LEGACY,
};

handle: c.FT_Library,

pub fn init() Error!Library {
    var ft = mem.zeroes(Library);

    try checkError(c.FT_Init_FreeType(&ft.handle));
    return ft;
}

pub fn deinit(self: Library) void {
    checkError(c.FT_Done_FreeType(self.handle)) catch |err| {
        std.log.err("mach/freetype: Failed to deinitialize Library: {}", .{err});
    };
}

pub fn facesCount(self: Library, path: []const u8) Error!u32 {
    const face = try self.newFace(path, -1);
    return @intCast(u32, face.handle.*.num_faces);
}

pub fn newFace(self: Library, path: []const u8, index: i32) Error!Face {
    var face = mem.zeroes(Face);
    try checkError(c.FT_New_Face(self.handle, path.ptr, index, &face.handle));
    return face;
}

pub fn newFaceFromMemory(self: Library, bytes: []const u8, index: i32) Error!Face {
    var face = mem.zeroes(Face);
    try checkError(c.FT_New_Memory_Face(self.handle, bytes.ptr, @intCast(i32, bytes.len), index, &face.handle));
    return face;
}

pub fn createStroker(self: Library) Error!Stroker {
    var stroker = Stroker{ .handle = undefined };
    try checkError(c.FT_Stroker_New(self.handle, &stroker.handle));
    return stroker;
}

pub fn setLcdFilter(self: Library, lcd_filter: LcdFilter) Error!void {
    try checkError(c.FT_Library_SetLcdFilter(self.handle, @enumToInt(lcd_filter)));
}

const comic_neue_font_path = "test/ComicNeue-Regular.ttf";
test "get faces count" {
    const lib = try init();
    defer lib.deinit();

    try testing.expectEqual(@as(u32, 1), try lib.facesCount(comic_neue_font_path));
}

test "create face from file" {
    const lib = try init();
    defer lib.deinit();

    var face = try lib.newFace(comic_neue_font_path, 0);
    defer face.deinit();
}

test "create face from memory" {
    const lib = try init();
    defer lib.deinit();

    var file = try std.fs.cwd().openFile(comic_neue_font_path, .{});
    defer file.close();

    const bytes = try file.readToEndAlloc(testing.allocator, 1024 * 1024 * 1024);
    defer testing.allocator.free(bytes);

    var face = try lib.newFaceFromMemory(bytes, 0);
    defer face.deinit();
}

test "create stroker" {
    var lib = try init();
    defer lib.deinit();

    var stroker = try lib.createStroker();
    defer stroker.deinit();
}

test "set lcd filter and weights" {
    var lib = try init();
    defer lib.deinit();

    try lib.setLcdFilter(.default);
}

test "load glyph" {
    var lib = try init();
    defer lib.deinit();

    var face = try lib.newFace(comic_neue_font_path, 0);
    defer face.deinit();

    try face.setCharSize(12 * 64, 0, 100, 0);
    try face.loadGlyph(205, .{ .ignore_global_advance_with = true });
}
