const c = @import("c.zig");
const Outline = @This();

handle: c.FT_Outline,

pub fn init(handle: c.FT_Outline) Outline {
    return Outline{ .handle = handle };
}
