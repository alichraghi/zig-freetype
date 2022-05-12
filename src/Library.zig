const std = @import("std");
const c = @import("c.zig");
const types = @import("types.zig");
const Face = @import("Face.zig");
const Stroker = @import("Stroker.zig");
const Error = @import("error.zig").Error;
const convertError = @import("error.zig").convertError;

const Library = @This();

handle: c.FT_Library,

pub fn init() Error!Library {
    var ft = std.mem.zeroes(Library);
    try convertError(c.FT_Init_FreeType(&ft.handle));
    return ft;
}

pub fn deinit(self: Library) void {
    convertError(c.FT_Done_FreeType(self.handle)) catch |err| {
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

pub fn openFace(self: Library, args: types.OpenArgs, face_index: i32) Error!Face {
    var face = std.mem.zeroes(c.FT_Face);
    try convertError(c.FT_Open_Face(self.handle, &args.toCInterface(), face_index, &face));
    return Face.init(face);
}

pub fn newStroker(self: Library) Error!Stroker {
    var stroker = std.mem.zeroes(c.FT_Stroker);
    try convertError(c.FT_Stroker_New(self.handle, &stroker));
    return Stroker.init(stroker);
}

pub fn setLcdFilter(self: Library, lcd_filter: types.LcdFilter) Error!void {
    return convertError(c.FT_Library_SetLcdFilter(self.handle, @enumToInt(lcd_filter)));
}

test "new face from file" {
    const lib = try init();
    _ = try lib.newFace("assets/ComicNeue.ttf", 0);
    lib.deinit();
}

test "new face from memory" {
    const lib = try init();
    const file = @embedFile("../assets/ComicNeue.ttf");
    _ = try lib.newFaceMemory(file, 0);
}

test "new stroker" {
    const lib = try init();
    const stroker = try lib.newStroker();
    stroker.deinit();
}

test "set lcd filter" {
    const lib = try init();
    try lib.setLcdFilter(.default);
}
