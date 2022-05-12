const std = @import("std");
const c = @import("c.zig");
const types = @import("types.zig");
const GlyphSlot = @import("GlyphSlot.zig");
const Library = @import("Library.zig");
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

pub fn deinit(self: Face) void {
    convertError(c.FT_Done_Face(self.handle)) catch |err| {
        std.log.err("mach/freetype: Failed to destroy Face: {}", .{err});
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

pub fn setTransform(self: Face, matrix: ?types.Matrix, delta: ?types.Vector) Error!void {
    var m = matrix orelse std.mem.zeroes(types.Matrix);
    var d = delta orelse std.mem.zeroes(types.Vector);
    return c.FT_Set_Transform(self.handle, &m, &d);
}

pub fn getCharIndex(self: Face, index: u32) ?u32 {
    const i = c.FT_Get_Char_Index(self.handle, index);
    return if (i == 0) null else i;
}

pub fn getKerning(self: Face, left_char_index: u32, right_char_index: u32, mode: types.KerningMode) Error!types.Vector {
    var vec = std.mem.zeroes(types.Vector);
    try convertError(c.FT_Get_Kerning(self.handle, left_char_index, right_char_index, @enumToInt(mode), &vec));
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
    const family = self.handle.*.family_name;
    return if (family == null)
        null
    else
        std.mem.span(family);
}

pub fn styleName(self: Face) ?[:0]const u8 {
    const style = self.handle.*.style_name;
    return if (style == null)
        null
    else
        std.mem.span(style);
}

pub fn styleFlags(self: Face) types.StyleFlags {
    const flags = self.handle.*.style_flags;
    return bitFieldsToStruct(types.StyleFlags, types.StyleFlags.Flag, flags);
}

pub fn sizeMetrics(self: Face) ?types.SizeMetrics {
    const size = self.handle.*.size;
    return if (size == null)
        null
    else
        @ptrCast(*types.SizeMetrics, &size.*.metrics).*;
}

pub fn postscriptName(self: Face) ?[:0]const u8 {
    const face_name = c.FT_Get_Postscript_Name(self.handle);
    return if (face_name == null)
        null
    else
        std.mem.span(face_name);
}

test "load glyph" {
    const lib = try Library.init();
    const face = try lib.newFace("assets/FiraSans-Regular.ttf", 0);

    try face.setPixelSizes(100, 100);
    try face.setCharSize(10 * 10, 0, 72, 0);

    try face.loadGlyph(205, .{});
    try face.loadChar('A', .{});

    face.deinit();
}

test "attach file" {
    const lib = try Library.init();
    const face = try lib.newFace("assets/DejaVuSans.pfb", 0);
    try face.attachFile("assets/DejaVuSans.pfm");
}

test "attach memory" {
    const lib = try Library.init();
    const face = try lib.newFace("assets/DejaVuSans.pfb", 0);
    const file = @embedFile("../assets/DejaVuSans.pfm");
    try face.attachMemory(file);
}