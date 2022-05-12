const std = @import("std");
const c = @import("c.zig");
const Error = @import("error.zig").Error;
const convertError = @import("error.zig").convertError;

const BitmapGlyph = @This();

handle: c.FT_BitmapGlyph,

pub fn init(handle: c.FT_BitmapGlyph) BitmapGlyph {
    return BitmapGlyph{ .handle = handle };
}
