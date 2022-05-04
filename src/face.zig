const std = @import("std");
const c = @import("c.zig");
const GlyphSlot = @import("glyph.zig").GlyphSlot;
const checkError = @import("error.zig").checkError;

pub const Face = struct {
    lib_handle: *c.FT_Library,
    handle: c.FT_Face,
    // glyph: GlyphSlot,
    // bytes: []const u8,

    pub fn deinit(self: Face) void {
        _ = c.FT_Done_Face(self.handle);
    }
};
