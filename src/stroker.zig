const c = @import("c.zig");

const Stroker = @This();

handle: c.FT_Stroker,

pub fn deinit(self: Stroker) void {
    c.FT_Stroker_Done(self.handle);
}
