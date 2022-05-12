const std = @import("std");
const c = @import("c.zig");
const utils = @import("utils.zig");

pub const Vector = c.FT_Vector;
pub const Matrix = c.FT_Matrix;
pub const BBox = c.FT_BBox;
pub const SizeMetrics = c.FT_Size_Metrics;
pub const GlyphMetrics = c.FT_Glyph_Metrics;

pub const LcdFilter = enum(u5) {
    none = c.FT_LCD_FILTER_NONE,
    default = c.FT_LCD_FILTER_DEFAULT,
    light = c.FT_LCD_FILTER_LIGHT,
    legacy = c.FT_LCD_FILTER_LEGACY,
};

pub const BBoxMode = enum(u2) {
    // https://freetype.org/freetype2/docs/reference/ft2-glyph_management.html#ft_glyph_bbox_mode
    // both `unscaled` and `subpixel` constants are set to 0
    unscaled_or_subpixels = c.FT_GLYPH_BBOX_UNSCALED,
    gridfit = c.FT_GLYPH_BBOX_GRIDFIT,
    truncate = c.FT_GLYPH_BBOX_TRUNCATE,
    pixels = c.FT_GLYPH_BBOX_PIXELS,
};

pub const KerningMode = enum(u2) {
    default = c.FT_KERNING_DEFAULT,
    unfitted = c.FT_KERNING_UNFITTED,
    unscaled = c.FT_KERNING_UNSCALED,
};

pub const RenderMode = enum(u3) {
    normal = c.FT_RENDER_MODE_NORMAL,
    light = c.FT_RENDER_MODE_LIGHT,
    mono = c.FT_RENDER_MODE_MONO,
    lcd = c.FT_RENDER_MODE_LCD,
    lcd_v = c.FT_RENDER_MODE_LCD_V,
    sdf = c.FT_RENDER_MODE_SDF,
};

pub const GlyphFormat = enum(u32) {
    none = c.FT_GLYPH_FORMAT_NONE,
    composite = c.FT_GLYPH_FORMAT_COMPOSITE,
    bitmap = c.FT_GLYPH_FORMAT_BITMAP,
    outline = c.FT_GLYPH_FORMAT_OUTLINE,
    plotter = c.FT_GLYPH_FORMAT_PLOTTER,
};

pub const SubGlyphInfo = struct {
    index: i32,
    flags: u32,
    arg1: i32,
    arg2: i32,
    transform: Matrix,
};

pub const LoadFlags = packed struct {
    no_scale: bool = false,
    no_hinting: bool = false,
    render: bool = false,
    no_bitmap: bool = false,
    vertical_layout: bool = false,
    force_autohint: bool = false,
    crop_bitmap: bool = false,
    pedantic: bool = false,
    ignore_global_advance_with: bool = false,
    no_recurse: bool = false,
    ignore_transform: bool = false,
    monochrome: bool = false,
    linear_design: bool = false,
    no_autohint: bool = false,
    target_normal: bool = false,
    target_light: bool = false,
    target_mono: bool = false,
    target_lcd: bool = false,
    target_lcd_v: bool = false,
    color: bool = false,

    pub const Flag = enum(u21) {
        no_scale = c.FT_LOAD_NO_SCALE,
        no_hinting = c.FT_LOAD_NO_HINTING,
        render = c.FT_LOAD_RENDER,
        no_bitmap = c.FT_LOAD_NO_BITMAP,
        vertical_layout = c.FT_LOAD_VERTICAL_LAYOUT,
        force_autohint = c.FT_LOAD_FORCE_AUTOHINT,
        crop_bitmap = c.FT_LOAD_CROP_BITMAP,
        pedantic = c.FT_LOAD_PEDANTIC,
        ignore_global_advance_with = c.FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH,
        no_recurse = c.FT_LOAD_NO_RECURSE,
        ignore_transform = c.FT_LOAD_IGNORE_TRANSFORM,
        monochrome = c.FT_LOAD_MONOCHROME,
        linear_design = c.FT_LOAD_LINEAR_DESIGN,
        no_autohint = c.FT_LOAD_NO_AUTOHINT,
        target_normal = c.FT_LOAD_TARGET_NORMAL,
        target_light = c.FT_LOAD_TARGET_LIGHT,
        target_mono = c.FT_LOAD_TARGET_MONO,
        target_lcd = c.FT_LOAD_TARGET_LCD,
        target_lcd_v = c.FT_LOAD_TARGET_LCD_V,
        color = c.FT_LOAD_COLOR,
    };

    pub fn toBitFields(flags: LoadFlags) u21 {
        return utils.structToBitFields(u21, Flag, flags);
    }
};

pub const OpenFlags = packed struct {
    memory: bool = false,
    stream: bool = false,
    path: bool = false,
    driver: bool = false,
    params: bool = false,

    pub const Flag = enum(u5) {
        memory = c.FT_OPEN_MEMORY,
        stream = c.FT_OPEN_STREAM,
        path = c.FT_OPEN_PATHNAME,
        driver = c.FT_OPEN_DRIVER,
        params = c.FT_OPEN_PARAMS,
    };

    pub fn toBitFields(flags: OpenFlags) u5 {
        return utils.structToBitFields(u5, Flag, flags);
    }
};

pub const OpenArgs = struct {
    flags: OpenFlags,
    data: union(enum) {
        memory: []const u8,
        path: []const u8,
        stream: c.FT_Stream,
        driver: c.FT_Module,
        params: []const c.FT_Parameter,
    },

    pub fn toCInterface(self: OpenArgs) c.FT_Open_Args {
        var oa = std.mem.zeroes(c.FT_Open_Args);
        oa.flags = self.flags.toBitFields();
        switch (self.data) {
            .memory => |d| {
                oa.memory_base = d.ptr;
                oa.memory_size = @truncate(u32, d.len);
            },
            .path => |*d| oa.pathname = @intToPtr(*u8, @ptrToInt(d.ptr)),
            .stream => |d| oa.stream = d,
            .driver => |d| oa.driver = d,
            .params => |*d| {
                oa.params = @intToPtr(*c.FT_Parameter, @ptrToInt(d.ptr));
                oa.num_params = @intCast(i32, d.len);
            },
        }
        return oa;
    }
};

pub const StyleFlags = packed struct {
    bold: bool = false,
    italic: bool = false,

    pub const Flag = enum(u2) {
        bold = c.FT_STYLE_FLAG_BOLD,
        italic = c.FT_STYLE_FLAG_ITALIC,
    };

    pub fn toBitFields(flags: StyleFlags) u2 {
        return utils.structToBitFields(u2, StyleFlags, Flag, flags);
    }
};
