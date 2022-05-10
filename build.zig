const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    // const lib = b.addStaticLibrary("freetype", "src/main.zig");
    // lib.setBuildMode(mode);
    // lib.linkLibC();
    // lib.addSystemIncludePath("/usr/include/freetype2");
    // lib.linkSystemLibraryName("freetype");
    // lib.install();

    const main_tests = b.addTestExe("test", "src/main.zig");
    // main_tests.use_stage1 = false;
    main_tests.linkLibC();
    main_tests.addSystemIncludePath("/usr/include/freetype2");
    main_tests.linkSystemLibraryName("freetype");
    main_tests.setBuildMode(mode);
    main_tests.install();
}
