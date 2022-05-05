const c = @import("c.zig");

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
