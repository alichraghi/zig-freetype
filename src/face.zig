const std = @import("std");
const c = @import("c.zig");
const types = @import("types.zig");
const GlyphSlot = @import("glyph_slot.zig");
const Library = @import("library.zig");
const Error = @import("error.zig").Error;
const convertError = @import("error.zig").convertError;
const bitFieldsToStruct = @import("utils.zig").bitFieldsToStruct;

const Face = @This();

handle: c.FT_Face,
glyph: GlyphSlot,

pub fn init(handle: c.FT_Face) Face {
    return Face{
        .handle = handle,
        .glyph = GlyphSlot.init(handle.*.glyph),
    };
}

pub fn attachFile(self: Face, path: []const u8) Error!void {
    return self.attachStream(.{
        .flags = .{ .path = true },
        .data = .{ .path = path },
    });
}

pub fn attachMemory(self: Face, bytes: []const u8) Error!void {
    return self.attachStream(.{
        .flags = .{ .memory = true },
        .data = .{ .memory = bytes },
    });
}

pub fn attachStream(self: Face, args: types.OpenArgs) Error!void {
    return convertError(c.FT_Attach_Stream(self.handle, &args.toCInterface()));
}

pub fn setCharSize(self: Face, pt_width: i32, pt_height: i32, horz_resolution: u16, vert_resolution: u16) Error!void {
    return convertError(c.FT_Set_Char_Size(self.handle, pt_width, pt_height, horz_resolution, vert_resolution));
}

pub fn setPixelSizes(self: Face, pixel_width: u32, pixel_height: u32) Error!void {
    return convertError(c.FT_Set_Pixel_Sizes(self.handle, pixel_width, pixel_height));
}

pub fn loadGlyph(self: Face, index: u32, flags: types.LoadFlags) Error!void {
    return convertError(c.FT_Load_Glyph(self.handle, index, flags.toBitFields()));
}

pub fn loadChar(self: Face, char: u32, flags: types.LoadFlags) Error!void {
    return convertError(c.FT_Load_Char(self.handle, char, flags.toBitFields()));
}

pub fn setTransform(self: Face, matrix: types.Matrix, delta: types.Vector) Error!void {
    return c.FT_Set_Transform(self.handle, @intToPtr(*c.FT_Matrix, @ptrToInt(&matrix)), @intToPtr(*c.FT_Vector, @ptrToInt(&delta)));
}

pub fn getCharIndex(self: Face, index: u32) ?u32 {
    var i = c.FT_Get_Char_Index(self.handle, index);
    return if (i == 0) null else i;
}

pub fn getKerning(self: Face, left_char_index: u32, right_char_index: u32, mode: types.KerningMode) Error!types.Vector {
    var vec = std.mem.zeroes(types.Vector);
    try convertError(c.FT_Get_Kerning(self.handle, left_char_index, right_char_index, @enumToInt(mode), @ptrCast(*c.FT_Vector, &vec)));
    return vec;
}

pub fn hasHorizontal(self: Face) bool {
    return c.FT_HAS_HORIZONTAL(self.handle);
}

pub fn hasVertical(self: Face) bool {
    return c.FT_HAS_VERTICAL(self.handle);
}

pub fn hasKerning(self: Face) bool {
    return c.FT_HAS_KERNING(self.handle);
}

pub fn hasFixedSizes(self: Face) bool {
    return c.FT_HAS_FIXED_SIZES(self.handle);
}

pub fn hasGlyphNames(self: Face) bool {
    return c.FT_HAS_GLYPH_NAMES(self.handle);
}

pub fn hasColor(self: Face) bool {
    return c.FT_HAS_COLOR(self.handle);
}

pub fn isScalable(self: Face) bool {
    return c.FT_IS_SCALABLE(self.handle);
}

pub fn isSfnt(self: Face) bool {
    return c.FT_IS_SFNT(self.handle);
}

pub fn isFixedWidth(self: Face) bool {
    return c.FT_IS_FIXED_WIDTH(self.handle);
}

pub fn isCidKeyed(self: Face) bool {
    return c.FT_IS_CID_KEYED(self.handle);
}

pub fn isTricky(self: Face) bool {
    return c.FT_IS_TRICKY(self.handle);
}

pub fn ascender(self: Face) i16 {
    return self.handle.*.ascender;
}

pub fn descender(self: Face) i16 {
    return self.handle.*.descender;
}

pub fn emSize(self: Face) u16 {
    return self.handle.*.units_per_EM;
}

pub fn height(self: Face) i16 {
    return self.handle.*.height;
}

pub fn maxAdvanceWidth(self: Face) i16 {
    return self.handle.*.max_advance_width;
}

pub fn maxAdvanceHeight(self: Face) i16 {
    return self.handle.*.max_advance_height;
}

pub fn underlinePosition(self: Face) i16 {
    return self.handle.*.underline_position;
}

pub fn underlineThickness(self: Face) i16 {
    return self.handle.*.underline_thickness;
}

pub fn numFaces(self: Face) i64 {
    return self.handle.*.num_faces;
}

pub fn numGlyphs(self: Face) i64 {
    return self.handle.*.num_glyphs;
}

pub fn familyName(self: Face) ?[:0]const u8 {
    var family = self.handle.*.family_name;
    return if (family == null)
        null
    else
        std.mem.span(family);
}

pub fn styleName(self: Face) ?[:0]const u8 {
    var style = self.handle.*.style_name;
    return if (style == null)
        null
    else
        std.mem.span(style);
}

pub fn styleFlags(self: Face) types.StyleFlags {
    var flags = self.handle.*.style_flags;
    return bitFieldsToStruct(types.StyleFlags, types.StyleFlags.Flag, flags);
}

pub fn sizeMetrics(self: Face) ?types.SizeMetrics {
    var size = self.handle.*.size;
    return if (size == null)
        null
    else
        @ptrCast(*types.SizeMetrics, &size.*.metrics).*;
}

pub fn postscriptName(self: Face) ?[:0]const u8 {
    var face_name = c.FT_Get_Postscript_Name(self.handle);
    return if (face_name == null)
        null
    else
        std.mem.span(face_name);
}

pub fn deinit(self: Face) void {
    convertError(c.FT_Done_Face(self.handle)) catch |err| {
        std.log.err("mach/freetype: Failed to deinitialize Face: {}", .{err});
    };
}

test "load glyph" {
    var lib = try Library.init();
    var face = try lib.newFace("assets/ComicNeue.ttf", 0);

    try face.setPixelSizes(100, 100);
    try face.setCharSize(10 * 10, 0, 72, 0);

    try face.loadGlyph(205, .{});
    try face.loadChar('A', .{});
}

test "face getters" {
    const expectEqual = std.testing.expectEqual;
    const expectEqualStrings = std.testing.expectEqualStrings;

    var lib = try Library.init();
    var face = try lib.newFace("assets/ComicNeue.ttf", 0);

    try expectEqual(@as(u32, 36), face.getCharIndex('A').?);
    try expectEqual(types.Vector{ .x = 0, .y = 0 }, try face.getKerning(5, 50, .default));
    try expectEqual(true, face.hasHorizontal());
    try expectEqual(false, face.hasVertical());
    try expectEqual(false, face.hasKerning());
    try expectEqual(false, face.hasFixedSizes());
    try expectEqual(true, face.hasGlyphNames());
    try expectEqual(false, face.hasColor());
    try expectEqual(true, face.isScalable());
    try expectEqual(true, face.isSfnt());
    try expectEqual(false, face.isFixedWidth());
    try expectEqual(false, face.isCidKeyed());
    try expectEqual(false, face.isTricky());
    try expectEqual(@as(i16, 940), face.ascender());
    try expectEqual(@as(i16, -221), face.descender());
    try expectEqual(@as(u16, 1000), face.emSize());
    try expectEqual(@as(i16, 1161), face.height());
    try expectEqual(@as(i16, 1098), face.maxAdvanceWidth());
    try expectEqual(@as(i16, 1161), face.maxAdvanceHeight());
    try expectEqual(@as(i16, -150), face.underlinePosition());
    try expectEqual(@as(i16, 50), face.underlineThickness());
    try expectEqual(@as(i64, 1), face.numFaces());
    try expectEqual(@as(i64, 293), face.numGlyphs());
    try expectEqual(types.StyleFlags{ .bold = false, .italic = false }, face.styleFlags());
    try expectEqual(std.mem.zeroes(types.SizeMetrics), face.sizeMetrics().?);
    try expectEqualStrings("Comic Neue", face.familyName().?);
    try expectEqualStrings("Regular", face.styleName().?);
    try expectEqualStrings("ComicNeue", face.postscriptName().?);
}

test "attach file" {
    var lib = try Library.init();
    var face = try lib.newFace("assets/DejaVuSans.pfb", 0);
    try face.attachFile("assets/DejaVuSans.pfm");
}

test "attach memory" {
    var lib = try Library.init();
    var face = try lib.newFace("assets/DejaVuSans.pfb", 0);
    const file = @embedFile("../assets/DejaVuSans.pfm");
    try face.attachMemory(file);
}

test "transform" {
    var lib = try Library.init();
    var face = try lib.newFace("assets/ComicNeue.ttf", 0);
    var matrix = types.Matrix{
        .xx = 1 * 0x10000,
        .xy = -1 * 0x10000,
        .yx = 1 * 0x10000,
        .yy = 1 * 0x10000,
    };
    var delta = types.Vector{ .x = 1000, .y = 0 };
    try face.setTransform(matrix, delta);
}
