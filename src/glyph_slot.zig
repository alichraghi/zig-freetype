const c = @import("c.zig");
const Error = @import("error.zig").Error;
const checkError = @import("error.zig").checkError;
const RenderMode = @import("types.zig").RenderMode;

const GlyphSlot = @This();

handle: c.FT_GlyphSlot,

pub fn init(handle: c.FT_GlyphSlot) GlyphSlot {
    return GlyphSlot{ .handle = handle };
}

pub fn render(self: GlyphSlot, render_mode: RenderMode) Error!void {
    return checkError(c.FT_Render_Glyph(self.handle, @enumToInt(render_mode)));
}
