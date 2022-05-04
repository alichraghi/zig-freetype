pub usingnamespace @import("library.zig");

const std = @import("std");
const freetype = @import("library.zig");
const testing = std.testing;
const test_font_path = "test/ComicNeue-Regular.ttf";

test "faces count" {
    var lib = try freetype.init(testing.allocator);
    defer lib.deinit();

    try testing.expectEqual(@as(usize, 1), try lib.facesCount(test_font_path));
}

test "create face from memory" {
    const lib = try freetype.init(testing.allocator);
    defer lib.deinit();

    var file = try std.fs.cwd().openFile(test_font_path, .{});
    defer file.close();

    const bytes = try file.readToEndAlloc(testing.allocator, 1024 * 1024 * 1024);
    defer testing.allocator.free(bytes);

    var face = try lib.newFaceFromMemory(bytes, 0);
    defer face.deinit();
}

test "create face from file" {
    var lib = try freetype.init(testing.allocator);
    defer lib.deinit();

    var face = try lib.newFace(test_font_path, 0);
    defer face.deinit();
}
