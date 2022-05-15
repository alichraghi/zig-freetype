const std = @import("std");

const freetype_upstream_dir = thisDir() ++ "/upstream/freetype";

pub const Options = struct {
    // support of bzip2 compressed fonts
    bzip2: bool = false,
    // support of PNG compressed OpenType embedded bitmaps
    opentype_png: bool = false,
    // HarfBuzz (used for improving auto-hinting of OpenType fonts)
    harfbuzz: bool = false,
    // support of compressed WOFF2 fonts
    brotli: bool = false,
    // lcd rendering support
    lcd_rendering: bool = true,
};

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}

fn buildFreeType(b: *std.build.Builder, mode: std.builtin.Mode, target: std.zig.CrossTarget, options: Options) !*std.build.LibExeObjStep {
    const lib = b.addStaticLibrary("freetype", freetype_upstream_dir ++ "/src/base/ftbase.c");
    lib.defineCMacro("FT2_BUILD_LIBRARY", "1");
    lib.setBuildMode(mode);
    lib.setTarget(target);
    lib.linkLibC();
    lib.addIncludePath(freetype_upstream_dir ++ "/include");

    var build_dir = try std.fs.cwd().openDir(freetype_upstream_dir ++ "/include/freetype/config", .{});
    defer build_dir.close();

    build_dir.access("ftoption_original.h", .{ .mode = .read_only }) catch {
        try build_dir.copyFile("ftoption.h", build_dir, "ftoption_original.h", .{});
    };
    try build_dir.copyFile("ftoption_original.h", build_dir, "ftoption.h", .{});

    const options_file = try build_dir.openFile("ftoption.h", .{ .mode = .read_write });
    defer options_file.close();

    const options_data = try options_file.readToEndAlloc(b.allocator, 1024 * 1024 * 1024);
    defer b.allocator.free(options_data);

    const options_header_end_index = std.mem.indexOf(u8, options_data, "\nFT_END_HEADER") orelse 0;
    const header_end_data = options_data[options_header_end_index..];
    try options_file.seekTo(options_header_end_index);

    var sources = std.ArrayList([]const u8).init(b.allocator);
    defer sources.deinit();

    inline for (freetype_base_sources) |source| {
        try sources.append(freetype_upstream_dir ++ source);
    }

    const detected_target = (try std.zig.system.NativeTargetInfo.detect(b.allocator, target)).target;
    switch (detected_target.os.tag) {
        .windows => {
            try sources.append(freetype_upstream_dir ++ "/builds/windows/ftsystem.c");
        },
        .macos, .linux => {
            try options_file.writeAll("#define HAVE_UNISTD_H 1\n");
            try options_file.writeAll("#define HAVE_FCNTL_H 1\n");
            try sources.append(freetype_upstream_dir ++ "/builds/unix/ftsystem.c");
        },
        else => {
            try sources.append(freetype_upstream_dir ++ "/src/base/ftsystem.c");
        },
    }

    // configure options
    if (options.lcd_rendering) {
        try options_file.writeAll("#define FT_CONFIG_OPTION_SUBPIXEL_RENDERING 1\n");
    }

    try options_file.writeAll(header_end_data);

    lib.addCSourceFiles(sources.items, &.{});
    lib.install();

    return lib;
}

pub fn build(b: *std.build.Builder) !void {
    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const main_tests = b.addTest("src/main.zig");
    main_tests.setBuildMode(mode);
    main_tests.setTarget(target);
    main_tests.addPackagePath("freetype", "src/main.zig");

    // Build and Link FreeType
    const freetype = try buildFreeType(b, mode, target, .{});
    main_tests.linkLibrary(freetype);
    main_tests.addIncludePath(freetype_upstream_dir ++ "/include");

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}

const freetype_base_sources = &[_][]const u8{
    "/src/autofit/autofit.c",
    "/src/base/ftbbox.c",
    "/src/base/ftbdf.c",
    "/src/base/ftbitmap.c",
    "/src/base/ftcid.c",
    "/src/base/ftfstype.c",
    "/src/base/ftgasp.c",
    "/src/base/ftglyph.c",
    "/src/base/ftgxval.c",
    "/src/base/ftinit.c",
    "/src/base/ftmm.c",
    "/src/base/ftotval.c",
    "/src/base/ftpatent.c",
    "/src/base/ftpfr.c",
    "/src/base/ftstroke.c",
    "/src/base/ftsynth.c",
    "/src/base/fttype1.c",
    "/src/base/ftwinfnt.c",
    "/src/bdf/bdf.c",
    "/src/bzip2/ftbzip2.c",
    "/src/cache/ftcache.c",
    "/src/cff/cff.c",
    "/src/cid/type1cid.c",
    "/src/gzip/ftgzip.c",
    "/src/lzw/ftlzw.c",
    "/src/pcf/pcf.c",
    "/src/pfr/pfr.c",
    "/src/psaux/psaux.c",
    "/src/pshinter/pshinter.c",
    "/src/psnames/psnames.c",
    "/src/raster/raster.c",
    "/src/sdf/sdf.c",
    "/src/sfnt/sfnt.c",
    "/src/smooth/smooth.c",
    "/src/svg/svg.c",
    "/src/truetype/truetype.c",
    "/src/type1/type1.c",
    "/src/type42/type42.c",
    "/src/winfonts/winfnt.c",
    "/src/base/ftdebug.c",
};
