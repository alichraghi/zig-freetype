const std = @import("std");
const c = @import("c.zig");
const Face = @import("face.zig");
const Stroker = @import("stroker.zig");
const OpenArgs = @import("types.zig").OpenArgs;
const LcdFilter = @import("types.zig").LcdFilter;
const Error = @import("error.zig").Error;
const checkError = @import("error.zig").checkError;
const mem = std.mem;
const testing = std.testing;

const Library = @This();

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

pub fn newFace(self: Library, path: []const u8, face_index: i32) Error!Face {
    return self.openFace(.{
        .flags = .{ .path = true },
        .data = .{ .path = path },
    }, face_index);
}

pub fn newFaceMemory(self: Library, bytes: []const u8, face_index: i32) Error!Face {
    return self.openFace(.{
        .flags = .{ .memory = true },
        .data = .{ .memory = bytes },
    }, face_index);
}

pub fn openFace(self: Library, args: OpenArgs, face_index: i32) Error!Face {
    var face = mem.zeroes(c.FT_Face);
    try checkError(c.FT_Open_Face(self.handle, &args.toCInterface(), face_index, &face));
    return Face.init(face);
}

pub fn newStroker(self: Library) Error!Stroker {
    var stroker = mem.zeroes(c.FT_Stroker);
    try checkError(c.FT_Stroker_New(self.handle, &stroker));
    return Stroker.init(stroker);
}

pub fn setLcdFilter(self: Library, lcd_filter: LcdFilter) Error!void {
    return checkError(c.FT_Library_SetLcdFilter(self.handle, @enumToInt(lcd_filter)));
}

test "create face from file" {
    const lib = try init();
    _ = try lib.newFace("assets/ComicNeue.ttf", 0);
}

test "create face from memory" {
    const lib = try init();
    var file = @embedFile("../assets/ComicNeue.ttf");
    _ = try lib.newFaceMemory(file, 0);
}

test "create stroker" {
    var lib = try init();
    _ = try lib.newStroker();
}

test "set lcd filter and weights" {
    var lib = try init();
    try lib.setLcdFilter(.default);
}
