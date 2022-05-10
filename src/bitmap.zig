const c = @import("c.zig");
const Bitmap = @This();

handle: c.FT_Bitmap,

pub fn init(handle: c.FT_Bitmap) Bitmap {
    return Bitmap{ .handle = handle };
}
