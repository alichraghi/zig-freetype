const std = @import("std");
const c = @import("c.zig");
const checkError = @import("error.zig").checkError;

pub const Stroker = struct {
    lib_handle: *c.FT_Library,
    handle: c.FT_Stroker,

    pub fn deinit(self: Stroker) void {
        _ = c.FT_Stroker_Done(self.handle);
    }
};
