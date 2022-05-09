const std = @import("std");
const c = @import("c.zig");
const types = @import("types.zig");
const GlyphSlot = @import("glyph_slot.zig");
const Error = @import("error.zig").Error;
const checkError = @import("error.zig").checkError;
const Library = @import("library.zig");
const testing = std.testing;
const KerningMode = types.KerningMode;
const Matrix = types.Matrix;
const Vector = types.Vector;
const LoadFlags = types.LoadFlags;
const OpenArgs = types.OpenArgs;

const Face = @This();

handle: c.FT_Face,
glyph: GlyphSlot,

pub fn init(handle: c.FT_Face) Face {
    return Face{
        .handle = handle,
        .glyph = GlyphSlot.init(handle.*.glyph),
    };
}

/// Call `attachStream` to attach a file by its path
pub fn attachFile(self: Face, path: []const u8) Error!void {
    return self.attachStream(.{
        .flags = .{ .path = true },
        .data = .{ .path = path },
    });
}

/// Call `attachStream` to attach additional information from a bytes slice
pub fn attachMemory(self: Face, bytes: []const u8) Error!void {
    return self.attachStream(.{
        .flags = .{ .memory = true },
        .data = .{ .memory = bytes },
    });
}

/// 'Attach' data to a face object. Normally, this is used to read
/// additional information for the face object. For example, you can
/// attach an AFM or PFM file that comes with a Type 1 font to get the kerning
/// values and other metrics.
pub fn attachStream(self: Face, args: OpenArgs) Error!void {
    return checkError(c.FT_Attach_Stream(self.handle, &args.toCInterface()));
}

/// Request the nominal size in points
///
/// `char_width`:
///   The nominal width, in 26.6 fractional points.
///
/// `char_height`:
///   The nominal height, in 26.6 fractional points.
///
/// `horz_resolution`:
///   The horizontal resolution in dpi.
///
/// `vert_resolution`:
///   The vertical resolution in dpi.
///
/// NOTE: While this function allows fractional points as input values, the
/// resulting ppem value for the given resolution is always rounded to the
/// nearest integer.
///
/// If either the character width or height is zero, it is set equal to
/// the other value.
///
/// If either the horizontal or vertical resolution is zero, it is set
/// equal to the other value.
///
/// A character width or height smaller than 1pt is set to `1pt`; if both
/// resolution values are zero, they are set to `72dpi`.
///
/// Don't use this function if you are using the FreeType cache API.
pub fn setCharSize(self: Face, width: i32, height: i32, horz_resolution: u16, vert_resolution: u16) Error!void {
    return checkError(c.FT_Set_Char_Size(self.handle, width, height, horz_resolution, vert_resolution));
}

/// Request the nominal size in pixels
///
/// `pixel_width`:
///   The nominal width, in pixels.
/// `pixel_height`:
///   The nominal height, in pixels.
///
/// NOTE: You should not rely on the resulting glyphs matching or being
/// constrained to this pixel size. Refer to `FT_Request_Size` to
/// understand how requested sizes relate to actual sizes.
///
/// Don't use this function if you are using the FreeType cache API.
pub fn setPixelSizes(self: Face, pixel_width: u32, pixel_height: u32) Error!void {
    return checkError(c.FT_Set_Pixel_Sizes(self.handle, pixel_width, pixel_height));
}

/// Load a glyph into the glyph slot of a face object
///
/// `index`:
/// The index of the glyph in the font file.  For CID-keyed fonts
/// either in PS or in CFF format) this argument specifies the CID
/// value.
///
/// `load_flags`:
/// A flag indicating what to load for this glyph. The `LoadFlags`
/// can be used to control the glyph loading process (e.g.,
/// whether the outline should be scaled, whether to load bitmaps or
/// not, whether to hint the outline, etc).
///
/// NOTE: For proper scaling and hinting, the active `FT_Size` object owned by
/// the face has to be meaningfully initialized by calling
/// `setCharSize` before this function, for example. The loaded
/// glyph may be transformed. See `setTransform` for the details.
///
/// For subsetted CID-keyed fonts,`FT_Err_Invalid_Argument` is returned
/// for invalid CID values (this is, for CID values that don't have a
/// corresponding glyph in the font). See the discussion of the
/// `FT_FACE_FLAG_CID_KEYED` flag for more details.
///
/// If you receive `GlyphTooBig` error, try getting the glyph outline
/// at EM size, then scale it manually and fill it as a graphics
/// operation.
pub fn loadGlyph(self: Face, index: u32, flags: LoadFlags) Error!void {
    return checkError(c.FT_Load_Glyph(self.handle, index, flags.toInt()));
}

/// Load a glyph into the glyph slot of a face object, accessed by its
/// character code
pub fn loadChar(self: Face, char: u32, flags: LoadFlags) Error!void {
    return checkError(c.FT_Load_Char(self.handle, char, flags.toInt()));
}

/// Set the transformation that is applied to glyph images when they are
/// loaded into a glyph slot through `loadGlyph`.
///
/// NOTE: This function is provided as a convenience, but keep in mind that
/// `Matrix` coefficients are only 16.16 fixed-point values, which can
/// limit the accuracy of the results. Using floating-point computations
/// to perform the transform directly in client code instead will always
/// yield better numbers.
///
/// The transformation is only applied to scalable image formats after the
/// glyph has been loaded. It means that hinting is unaltered by the
/// transformation and is performed on the character size given in the
/// last call to `setCharSize` or `setPixelSize`.
///
/// Note that this also transforms the `face.glyph.advance` field, but
/// **not** the values in `face.glyph.metrics`.
pub fn setTransform(self: Face, matrix: *Matrix, delta: *Vector) Error!void {
    return c.FT_Set_Transform(self.handle, @ptrCast([*c]c.FT_Matrix, matrix), @ptrCast([*c]c.FT_Vector, delta));
}

/// Return the glyph index of a given character code.
/// This function uses the currently selected charmap to do the mapping.
///
/// NOTE:
/// If you use FreeType to manipulate the contents of font files
/// directly, be aware that the glyph index returned by this
/// function doesn't always correspond to the internal indices
/// used within the file. This is done to ensure that
/// value 0 always corresponds to the ‘missing glyph’.
/// If the first glyph is not named ‘.notdef’, then
/// for Type `1` and Type `42` fonts, ‘.notdef’ will be moved
/// into the glyph ID 0 position, and whatever
/// was there will be moved to the position ‘.notdef’ had.
/// For Type `1` fonts, if there is no ‘.notdef’ glyph
/// at all, then one will be created at index `0` and whatever
/// was there will be moved to the last index – Type `42` fonts
/// are considered invalid under this condition.
pub fn getCharIndex(self: Face, index: u32) ?u32 {
    var i = c.FT_Get_Char_Index(self.handle, index);
    return if (i == 0) null else i;
}

/// Return the kerning vector between two glyphs of the same face.
/// Only horizontal layouts (left-to-right & right-to-left) are
/// supported by this method. Other layouts, or more sophisticated
/// kernings, are out of the scope of this API function – they can be
/// implemented through format-specific interfaces.
/// Kerning for OpenType fonts implemented in a ‘GPOS’ table is not supported;
/// use FT_HAS_KERNING to find out whether a font has data that
/// can be extracted with FT_Get_Kerning.
pub fn getKerning(self: Face, left_char_index: u32, right_char_index: u32, mode: KerningMode) Error!Vector {
    var vec = std.mem.zeroes(Vector);
    try checkError(c.FT_Get_Kerning(self.handle, left_char_index, right_char_index, @enumToInt(mode), @ptrCast([*c]c.FT_Vector, &vec)));
    return vec;
}

pub fn deinit(self: Face) void {
    checkError(c.FT_Done_Face(self.handle)) catch |err| {
        std.log.err("mach/freetype: Failed to deinitialize Face: {}", .{err});
    };
}

test "load glyph" {
    var lib = try Library.init();
    defer lib.deinit();

    var face = try lib.newFace("src/test/ComicNeue.ttf", 0);
    defer face.deinit();

    try face.setPixelSizes(100, 100);
    try face.setCharSize(40 * 64, 0, 50, 0);

    try face.loadGlyph(205, .{});
    try face.glyph.render(.normal);

    try face.loadChar('A', .{ .render = true });
    try face.glyph.render(.normal);

    try testing.expectEqual(@as(u32, 36), face.getCharIndex('A').?);
    _ = try face.getKerning(0, 0, .default);
}

test "attach file" {
    var lib = try Library.init();
    defer lib.deinit();

    var face = try lib.newFace("src/test/DejaVuSans.pfb", 0);
    defer face.deinit();

    try face.attachFile("src/test/DejaVuSans.pfm");
}

test "attach memory" {
    var lib = try Library.init();
    defer lib.deinit();

    var face = try lib.newFace("src/test/DejaVuSans.pfb", 0);
    defer face.deinit();

    const file = @embedFile("test/DejaVuSans.pfm");
    try face.attachMemory(file);
}

test "transform" {
    var lib = try Library.init();
    defer lib.deinit();

    var face = try lib.newFace("src/test/ComicNeue.ttf", 0);
    defer face.deinit();

    var matrix = types.Matrix{
        .xx = 1 * 0x10000,
        .xy = -1 * 0x10000,
        .yx = 1 * 0x10000,
        .yy = 1 * 0x10000,
    };
    var delta = types.Vector{ .x = 1000, .y = 0 };
    try face.setTransform(&matrix, &delta);
}
