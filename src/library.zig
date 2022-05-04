const std = @import("std");
const c = @import("c.zig");
const Face = @import("face.zig").Face;
const Stroker = @import("glyph.zig").Stroker;
const Error = @import("error.zig").Error;
const checkError = @import("error.zig").checkError;
const testing = std.testing;

const Library = @This();

handle: c.FT_Library,

pub fn init() Error!Library {
    var ft = Library{ .handle = undefined };

    try checkError(c.FT_Init_FreeType(&ft.handle));
    return ft;
}

pub fn deinit(self: Library) void {
    checkError(c.FT_Done_FreeType(self.handle)) catch |err| {
        std.log.err("mach/freetype: Failed to deinitialize Library: {}", .{err});
    };
}

pub fn facesCount(self: Library, path: []const u8) Error!usize {
    const face = try self.newFace(path, -1);
    return @intCast(usize, face.handle.*.num_faces);
}

pub fn newFace(self: Library, path: []const u8, index: isize) Error!Face {
    var face = Face{ .handle = undefined };
    try checkError(c.FT_New_Face(self.handle, path.ptr, @intCast(c_long, index), &face.handle));
    return face;
}

pub fn newFaceFromMemory(self: Library, bytes: []const u8, index: isize) Error!Face {
    var face = Face{ .handle = undefined };
    try checkError(c.FT_New_Memory_Face(self.handle, bytes.ptr, @intCast(c_long, bytes.len), @intCast(c_long, index), &face.handle));
    try checkError(c.FT_Reference_Library(self.handle));
    return face;
}

pub fn createStroker(self: Library) Error!Stroker {
    var stroker = Stroker{ .handle = undefined };
    try checkError(c.FT_Stroker_New(self.handle, &stroker.handle));
    return stroker;
}
