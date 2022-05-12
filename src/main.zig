pub usingnamespace @import("types.zig");
pub const Error = @import("error.zig").Error;
pub const Face = @import("Face.zig");
pub const Glyph = @import("GlyphSlot.zig");
pub const Library = @import("Library.zig");
pub const Bitmap = @import("Bitmap.zig");

const std = @import("std");

const WIDTH: usize = 32;
const HEIGHT: usize = 24;

fn drawBitmap(bitmap: Bitmap, x: usize, y: usize) [HEIGHT][WIDTH]u8 {
    const figure = std.mem.zeroes([HEIGHT][WIDTH]u8);
    const p: usize = 0;
    const q: usize = 0;
    const w = bitmap.width();
    const x_max = x + w;
    const y_max = y + bitmap.rows();

    const i: usize = 0;
    while (i < x_max - x) : (i += 1) {
        const j: usize = 0;
        while (j < y_max - y) : (j += 1) {
            if (i < WIDTH and j < HEIGHT) {
                figure[j][i] |= bitmap.buffer()[q * w + p];
                q += 1;
            }
        }
        q = 0;
        p += 1;
    }
    return figure;
}

test "draw single glyph" {
    return error.SkipZigTest;

    // const lib = try Library.init();
    // defer lib.deinit();
    // const face = try lib.newFace("assets/FiraSans-Regular.ttf", 0);
    // defer face.deinit();
    // try face.setCharSize(40 * 64, 0, 50, 0);
    // try face.loadChar('@', .{ .render = true });
    // const glyph = face.glyph;
    // const x: usize = @intCast(usize, glyph.bitmapLeft());
    // const y = HEIGHT - @intCast(usize, glyph.bitmapTop());
    // const figure = drawBitmap(glyph.bitmap(), x, y);

    // const i: usize = 0;
    // while (i < HEIGHT) : (i += 1) {
    //     const j: usize = 0;
    //     while (j < WIDTH) : (j += 1) {
    //         const char: u8 = switch (figure[i][j]) {
    //             0 => ' ',
    //             1...128 => '*',
    //             else => '+',
    //         };
    //         std.debug.print("{c}", .{char});
    //     }
    //     std.debug.print("\n", .{});
    // }
}

test {
    std.testing.refAllDecls(@import("Bitmap.zig"));
    std.testing.refAllDecls(@import("BitmapGlyph.zig"));
    std.testing.refAllDecls(@import("Face.zig"));
    std.testing.refAllDecls(@import("Glyph.zig"));
    std.testing.refAllDecls(@import("GlyphSlot.zig"));
    std.testing.refAllDecls(@import("Library.zig"));
    std.testing.refAllDecls(@import("Outline.zig"));
    std.testing.refAllDecls(@import("Stroker.zig"));
    std.testing.refAllDecls(@import("types.zig"));
    std.testing.refAllDecls(@import("error.zig"));
    std.testing.refAllDecls(@import("utils.zig"));
}
