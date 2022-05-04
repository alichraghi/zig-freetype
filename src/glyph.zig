const c = @import("c.zig");
const checkError = @import("error.zig").checkError;

pub const GlyphSlot = struct {
    lib_handle: *c.FT_Library,
    handle: c.FT_GlyphSlot,
};
