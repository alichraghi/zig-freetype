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

pub fn subGlyphInfo(self: GlyphSlot, sub_index: u32) Error!types.SubGlyphInfo {
    var info = std.mem.zeroes(types.SubGlyphInfo);
    try convertError(c.FT_Get_SubGlyph_Info(self.handle, sub_index, &info.index, &info.flags, &info.arg1, &info.arg2, @ptrCast(*c.FT_Matrix, &info.transform)));
    return info;
}

pub fn glyph(self: GlyphSlot) Error!Glyph {
    var out = std.mem.zeroes(c.FT_Glyph);
    try convertError(c.FT_Get_Glyph(self.handle, &out));
    return Glyph.init(out);
}

pub fn outline(self: GlyphSlot) ?Outline {
    const out = self.handle.*.outline;
    const format = self.handle.*.format;

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

test "glyph slot" {
    const Library = @import("library.zig");
    const expect = std.testing.expect;
    const expectError = std.testing.expectError;

    const lib = try Library.init();
    const face = try lib.newFace("assets/ComicNeue.ttf", 0);

    try face.setCharSize(10 * 10, 0, 72, 0);
    try face.loadChar('A', .{ .render = true });

    try face.glyph.render(types.RenderMode.normal);

    try expectError(Error.InvalidArgument, face.glyph.subGlyphInfo(0));
    try expect((try face.glyph.glyph()).handle != null);
    try expect(face.glyph.outline() == null);
    try expect(face.glyph.bitmap().width() > 0);
    try expect(face.glyph.bitmapLeft() == 0);
    try expect(face.glyph.bitmapTop() > 0);
    try expect(face.glyph.linearHoriAdvance() > 0);
    try expect(face.glyph.linearVertAdvance() > 0);
    try expect(face.glyph.advance().x > 0);
    try expect(face.glyph.metrics().width > 0);
}
