const c = @import("c.zig");

const Glyph = @This();

handle: c.FT_GlyphSlot,

pub fn deinit(self: Glyph) void {
    c.FT_Glyph_Done(self.handle);
}
