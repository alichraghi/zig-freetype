const std = @import("std");
const c = @import("c.zig");
const Error = @import("error.zig").Error;
const checkError = @import("error.zig").checkError;
const RenderMode = @import("types.zig").RenderMode;
const Glyph = @import("glyph.zig");
const Outline = @import("outline.zig");
const Bitmap = @import("bitmap.zig");
const SubGlyphInfo = @import("types.zig").SubGlyphInfo;
const Vector = @import("types.zig").Vector;
const GlyphMetrics = @import("types.zig").GlyphMetrics;

const GlyphSlot = @This();

handle: c.FT_GlyphSlot,

pub fn init(handle: c.FT_GlyphSlot) GlyphSlot {
    return GlyphSlot{ .handle = handle };
}

pub fn render(self: GlyphSlot, render_mode: RenderMode) Error!void {
    return checkError(c.FT_Render_Glyph(self.handle, @enumToInt(render_mode)));
}

pub fn getSubGlyphInfo(self: GlyphSlot, sub_index: u32) Error!SubGlyphInfo {
    var info = std.mem.zeroes(SubGlyphInfo);
    try checkError(c.FT_Get_SubGlyph_Info(self.handle, sub_index, &info.index, &info.flags, &info.arg1, &info.arg2, @ptrCast([*c]c.FT_Matrix, &info.transform)));
    return info;
}

pub fn getGlyph(self: GlyphSlot) Error!Glyph {
    var glyph = std.mem.zeroes(c.FT_Glyph);
    try checkError(c.FT_Get_Glyph(self.handle, &glyph));
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

pub fn advance(self: GlyphSlot) Vector {
    return @ptrCast(*Vector, &self.handle.*.advance).*;
}

pub fn linearHoriAdvance(self: GlyphSlot) i64 {
    return self.handle.*.linearHoriAdvance;
}

pub fn linearVertAdvance(self: GlyphSlot) i64 {
    return self.handle.*.linearVertAdvance;
}

pub fn metrics(self: GlyphSlot) GlyphMetrics {
    return @ptrCast(*GlyphMetrics, &self.handle.*.metrics).*;
}
