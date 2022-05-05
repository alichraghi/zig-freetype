const std = @import("std");
const c = @import("c.zig");
const Matrix = @import("types.zig").Matrix;
const Vector = @import("types.zig").Vector;
const Error = @import("error.zig").Error;
const checkError = @import("error.zig").checkError;
const testing = std.testing;

const Face = @This();

pub const LoadFlags = packed struct {
    no_scale: bool = false,
    no_hinting: bool = false,
    render: bool = false,
    no_bitmap: bool = false,
    vertical_layout: bool = false,
    force_autohint: bool = false,
    crop_bitmap: bool = false,
    pedantic: bool = false,
    ignore_global_advance_with: bool = false,
    no_recurse: bool = false,
    ignore_transform: bool = false,
    monochrome: bool = false,
    linear_design: bool = false,
    no_autohint: bool = false,

    fn toInt(flags: LoadFlags) i32 {
        var value: i32 = 0x0;
        inline for (comptime std.meta.fieldNames(LoadFlags)) |field_name, i| {
            if (@field(flags, field_name)) {
                value |= @as(i32, 1) << i;
            }
        }
        return value;
    }
};

handle: c.FT_Face,

pub fn attachFile(self: Face, path: []const u8) Error!void {
    return checkError(c.FT_Attach_File(self.handle, path.ptr));
}

pub fn setCharSize(self: Face, width: i32, height: i32, horz_resolution: u16, vert_resolution: u16) Error!void {
    return checkError(c.FT_Set_Char_Size(self.handle, width, height, horz_resolution, vert_resolution));
}

pub fn setPixelSizes(self: Face, pixel_width: u32, pixel_height: u32) Error!void {
    try checkError(c.FT_Set_Pixel_Sizes(self.handle, pixel_width, pixel_height));
}

pub fn loadGlyph(self: Face, index: u32, flags: LoadFlags) Error!void {
    return checkError(c.FT_Load_Glyph(self.handle, index, flags.toInt()));
}

pub fn loadChar(self: Face, char: u32, flags: LoadFlags) Error!void {
    return checkError(c.FT_Load_Char(self.handle, char, flags.toInt()));
}

pub fn setTransform(self: Face, matrix: *Matrix, delta: *Vector) Error!void {
    return c.FT_Set_Transform(self.handle, @ptrCast([*c]c.FT_Matrix, matrix), @ptrCast([*c]c.FT_Vector, delta));
}

pub fn deinit(self: Face) void {
    checkError(c.FT_Done_Face(self.handle)) catch |err| {
        std.log.err("mach/freetype: Failed to deinitialize Face: {}", .{err});
    };
}

test "face functions" {
    const Library = @import("library.zig");
    const types = @import("types.zig");

    var lib = try Library.init();
    defer lib.deinit();

    var face = try lib.newFace("test/ComicNeue-Regular.ttf", 0);
    defer face.deinit();

    try face.setCharSize(12 * 64, 0, 100, 0);
    try face.setPixelSizes(100, 100);
    try face.loadGlyph(205, .{});

    var matrix = types.Matrix{
        .xx = 1 * 0x10000,
        .xy = -1 * 0x10000,
        .yx = 1 * 0x10000,
        .yy = 1 * 0x10000,
    };

    var delta = types.Vector{ .x = 1000, .y = 0 };

    try face.setTransform(&matrix, &delta);
    try face.loadChar('A', .{});
}

test "load flags" {
    try testing.expectEqual(c.FT_LOAD_CROP_BITMAP | c.FT_LOAD_NO_BITMAP, (LoadFlags{
        .crop_bitmap = true,
        .no_bitmap = true,
    }).toInt());
    try testing.expectEqual(c.FT_LOAD_DEFAULT, (LoadFlags{}).toInt());
}

test "analyze attachFile" {
    _ = attachFile;
}
