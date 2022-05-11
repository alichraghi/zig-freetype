pub usingnamespace @import("types.zig");
pub const Error = @import("error.zig").Error;
pub const Face = @import("face.zig");
pub const Glyph = @import("glyph_slot.zig");
pub const Library = @import("library.zig");
pub const Bitmap = @import("bitmap.zig");

const std = @import("std");

const WIDTH: usize = 32;
const HEIGHT: usize = 24;

fn drawBitmap(bitmap: Bitmap, x: usize, y: usize) [HEIGHT][WIDTH]u8 {
    var figure = std.mem.zeroes([HEIGHT][WIDTH]u8);
    var p: usize = 0;
    var q: usize = 0;
    var w = bitmap.width();
    var x_max = x + w;
    var y_max = y + bitmap.rows();

    var i: usize = 0;
    while (i < x_max - x) : (i += 1) {
        var j: usize = 0;
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

    // var lib = try Library.init();
    // defer lib.deinit();
    // var face = try lib.newFace("assets/FiraSans-Regular.ttf", 0);
    // defer face.deinit();
    // try face.setCharSize(40 * 64, 0, 50, 0);
    // try face.loadChar('@', .{ .render = true });
    // var glyph = face.glyph;
    // var x: usize = @intCast(usize, glyph.bitmapLeft());
    // var y = HEIGHT - @intCast(usize, glyph.bitmapTop());
    // var figure = drawBitmap(glyph.bitmap(), x, y);

    // var i: usize = 0;
    // while (i < HEIGHT) : (i += 1) {
    //     var j: usize = 0;
    //     while (j < WIDTH) : (j += 1) {
    //         var char: u8 = switch (figure[i][j]) {
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
    std.testing.refAllDecls(@import("error.zig"));
    std.testing.refAllDecls(@import("face.zig"));
    std.testing.refAllDecls(@import("outline.zig"));
    std.testing.refAllDecls(@import("glyph.zig"));
    std.testing.refAllDecls(@import("glyph_slot.zig"));
    std.testing.refAllDecls(@import("stroker.zig"));
    std.testing.refAllDecls(@import("types.zig"));
    std.testing.refAllDecls(@import("library.zig"));
    std.testing.refAllDecls(@import("bitmap.zig"));
}
