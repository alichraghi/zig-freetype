pub const Library = @import("Library.zig");
pub const Face = @import("Face.zig");
pub const GlyphSlot = @import("GlyphSlot.zig");
pub const Glyph = @import("Glyph.zig");
pub const BitmapGlyph = @import("BitmapGlyph.zig");
pub const Bitmap = @import("Bitmap.zig");
pub const Outline = @import("Outline.zig");
pub const Stroker = @import("Stroker.zig");
pub const Error = @import("error.zig").Error;
pub const C = @import("c.zig");
pub usingnamespace @import("types.zig");

const std = @import("std");

test "draw single glyph" {
    const WIDTH = 32;
    const HEIGHT = 24;
    const lib = try Library.init();
    defer lib.deinit();

    const face = try lib.newFace("assets/FiraSans-Regular.ttf", 0);
    defer face.deinit();

    try face.setCharSize(40 * 64, 0, 50, 0);
    try face.loadChar('@', .{ .render = true });

    const glyph = face.glyph;
    const x = @intCast(usize, glyph.bitmapLeft());
    const y = HEIGHT - @intCast(usize, glyph.bitmapTop());

    var figure = std.mem.zeroes([HEIGHT][WIDTH]u8);
    var p: usize = 0;
    var q: usize = 0;
    const w = glyph.bitmap().width();
    const x_max = x + w;
    const y_max = y + glyph.bitmap().rows();

    // draw
    {
        var i: usize = 0;
        while (i < x_max - x) : (i += 1) {
            var j: usize = 0;
            while (j < y_max - y) : (j += 1) {
                if (i < WIDTH and j < HEIGHT) {
                    figure[j][i] |= glyph.bitmap().buffer()[q * w + p];
                    q += 1;
                }
            }
            q = 0;
            p += 1;
        }
    }
    // print
    {
        std.debug.print("\n", .{});
        var i: usize = 0;
        while (i < HEIGHT) : (i += 1) {
            var j: usize = 0;
            while (j < WIDTH) : (j += 1) {
                const char: u8 = switch (figure[i][j]) {
                    0 => ' ',
                    1...128 => ';',
                    else => '#',
                };
                std.debug.print("{c}", .{char});
            }
            std.debug.print("\n", .{});
        }
    }
}

test {
    std.testing.refAllDecls(@import("Library.zig"));
    std.testing.refAllDecls(@import("Face.zig"));
    std.testing.refAllDecls(@import("GlyphSlot.zig"));
    std.testing.refAllDecls(@import("Glyph.zig"));
    std.testing.refAllDecls(@import("BitmapGlyph.zig"));
    std.testing.refAllDecls(@import("Bitmap.zig"));
    std.testing.refAllDecls(@import("Outline.zig"));
    std.testing.refAllDecls(@import("Stroker.zig"));
    std.testing.refAllDecls(@import("types.zig"));
    std.testing.refAllDecls(@import("error.zig"));
    std.testing.refAllDecls(@import("utils.zig"));
}
