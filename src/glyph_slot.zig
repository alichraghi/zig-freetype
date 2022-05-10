const std = @import("std");
const c = @import("c.zig");
const types = @import("types.zig");
const Glyph = @import("glyph.zig");
const Outline = @import("outline.zig");
const Bitmap = @import("bitmap.zig");
const Error = @import("error.zig").Error;
const convertError = @import("error.zig").convertError;

const GlyphSlot = @This();

handle: c.FT_GlyphSlot,

pub fn init(handle: c.FT_GlyphSlot) GlyphSlot {
    return GlyphSlot{ .handle = handle };
}

pub fn render(self: GlyphSlot, render_mode: types.RenderMode) Error!void {
    return convertError(c.FT_Render_Glyph(self.handle, @enumToInt(render_mode)));
}

pub fn getSubGlyphInfo(self: GlyphSlot, sub_index: u32) Error!types.SubGlyphInfo {
    var info = std.mem.zeroes(types.SubGlyphInfo);
    try convertError(c.FT_Get_SubGlyph_Info(self.handle, sub_index, &info.index, &info.flags, &info.arg1, &info.arg2, @ptrCast([*c]c.FT_Matrix, &info.transform)));
    return info;
}

pub fn getGlyph(self: GlyphSlot) Error!Glyph {
    var glyph = std.mem.zeroes(c.FT_Glyph);
    try convertError(c.FT_Get_Glyph(self.handle, &glyph));
    return Glyph.init(glyph);
}

pub fn outline(self: GlyphSlot) ?Outline {
    var out = self.handle.*.outline;
    var format = self.handle.*.format;

    return if (format == c.FT_GLYPH_FORMAT_OUTLINE)
        Outline.init(out)
    else
        null;
}

pub fn bitmap(self: GlyphSlot) Bitmap {
    return Bitmap.init(self.handle.*.bitmap);
}

pub fn bitmapLeft(self: GlyphSlot) i32 {
    return self.handle.*.bitmap_left;
}

pub fn bitmapTop(self: GlyphSlot) i32 {
    return self.handle.*.bitmap_top;
}

pub fn linearHoriAdvance(self: GlyphSlot) i64 {
    return self.handle.*.linearHoriAdvance;
}

pub fn linearVertAdvance(self: GlyphSlot) i64 {
    return self.handle.*.linearVertAdvance;
}

pub fn advance(self: GlyphSlot) types.Vector {
    return @ptrCast(*types.Vector, &self.handle.*.advance).*;
}

pub fn metrics(self: GlyphSlot) types.GlyphMetrics {
    return @ptrCast(*types.GlyphMetrics, &self.handle.*.metrics).*;
}
