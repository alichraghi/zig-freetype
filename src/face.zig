const std = @import("std");
const c = @import("c.zig");
const Library = @import("library.zig");
const checkError = @import("error.zig").checkError;

pub const Face = struct {
    handle: c.FT_Face,
    // glyph: GlyphSlot,

    pub fn deinit(self: Face) void {
        checkError(c.FT_Done_Face(self.handle)) catch |err| {
            std.log.err("mach/freetype: Failed to deinitialize Face: {}", .{err});
        };
    }
};
