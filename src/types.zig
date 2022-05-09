const std = @import("std");
const c = @import("c.zig");
const testing = std.testing;

/// cast struct fields values to bit fields
fn structFlagsToInt(comptime IntType: type, comptime StructType: type, comptime EnumDataType: type, flags: StructType) IntType {
    var value: IntType = 0x0;
    inline for (comptime std.meta.fieldNames(StructType)) |field_name| {
        if (@field(flags, field_name)) {
            value |= @enumToInt(@field(EnumDataType, field_name));
        }
    }
    return value;
}

pub const Vector = extern struct {
    x: i64,
    y: i64,
};

pub const Matrix = extern struct {
    xx: i64,
    xy: i64,
    yx: i64,
    yy: i64,
};

pub const BBox = extern struct {
    xMin: i64,
    yMin: i64,
    xMax: i64,
    yMax: i64,
};

pub const GlyphMetrics = extern struct {
    width: i32,
    height: i32,
    horiBearingX: i32,
    horiBearingY: i32,
    horiAdvance: i32,
    vertBearingX: i32,
    vertBearingY: i32,
    vertAdvance: i32,
};

pub const LcdFilter = enum(u32) {
    none = c.FT_LCD_FILTER_NONE,
    default = c.FT_LCD_FILTER_DEFAULT,
    light = c.FT_LCD_FILTER_LIGHT,
    legacy = c.FT_LCD_FILTER_LEGACY,
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

    pub const Flag = enum(i32) {
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

    pub fn toInt(flags: LoadFlags) i32 {
        return structFlagsToInt(i32, LoadFlags, Flag, flags);
    }
};

pub const OpenFlags = packed struct {
    memory: bool = false,
    stream: bool = false,
    path: bool = false,
    driver: bool = false,
    params: bool = false,

    pub const Flag = enum(u16) {
        memory = c.FT_OPEN_MEMORY,
        stream = c.FT_OPEN_STREAM,
        path = c.FT_OPEN_PATHNAME,
        driver = c.FT_OPEN_DRIVER,
        params = c.FT_OPEN_PARAMS,
    };

    pub fn toInt(flags: OpenFlags) u16 {
        return structFlagsToInt(u16, OpenFlags, Flag, flags);
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
        oa.flags = self.flags.toInt();
        switch (self.data) {
            .memory => |d| {
                oa.memory_base = d.ptr;
                oa.memory_size = @intCast(i32, d.len);
            },
            .path => |*d| oa.pathname = @intToPtr([*c]u8, @ptrToInt(d.ptr)),
            .stream => |d| oa.stream = d,
            .driver => |d| oa.driver = d,
            .params => |*d| {
                oa.params = @intToPtr([*c]c.FT_Parameter, @ptrToInt(d.ptr));
                oa.num_params = @intCast(i32, d.len);
            },
        }
        return oa;
    }
};

pub const StyleFlags = packed struct {
    bold: bool = false,
    italic: bool = false,

    pub const Flag = enum(u8) {
        bold = c.FT_STYLE_FLAG_BOLD,
        italic = c.FT_STYLE_FLAG_ITALIC,
    };

    pub fn toInt(flags: StyleFlags) u8 {
        return structFlagsToInt(u8, StyleFlags, Flag, flags);
    }
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

test "load flags" {
    try testing.expectEqual(c.FT_LOAD_CROP_BITMAP | c.FT_LOAD_NO_BITMAP, (LoadFlags{
        .crop_bitmap = true,
        .no_bitmap = true,
    }).toInt());
    try testing.expectEqual(c.FT_LOAD_DEFAULT, (LoadFlags{}).toInt());
}

test "open flags" {
    try testing.expectEqual(c.FT_OPEN_MEMORY | c.FT_OPEN_PARAMS, (OpenFlags{
        .memory = true,
        .params = true,
    }).toInt());
}
