const c = @import("c.zig");

const Glyph = @This();

handle: c.FT_Glyph,

pub fn init(handle: c.FT_Glyph) Glyph {
    return Glyph{ .handle = handle };
}
