const c = @import("c.zig");
const Library = @import("library.zig");
const checkError = @import("error.zig").checkError;

pub const Stroker = struct {
    handle: c.FT_Stroker,

    pub fn deinit(self: Stroker) void {
        c.FT_Stroker_Done(self.handle);
    }
};

pub const Glyph = struct {
    handle: c.FT_GlyphSlot,

    pub fn deinit(self: Glyph) void {
        c.FT_Glyph_Done(self.handle);
    }
};
