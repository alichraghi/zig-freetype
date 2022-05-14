const std = @import("std");

const freetype_dir = thisDir() ++ "/upstream/freetype";

pub const Options = struct {
    // support of bzip2 compressed fonts
    bzip2: bool = false,
    // support of PNG compressed OpenType embedded bitmaps
    opentype_png: bool = false,
    // HarfBuzz (used for improving auto-hinting of OpenType fonts)
    harfbuzz: bool = false,
    // support of compressed WOFF2 fonts
    brotli: bool = false,
};

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}

fn translateHeaders(b: *std.build.Builder, include_dir: ?[]const u8) void {
    const c_translate = b.addTranslateC(.{ .path = thisDir() ++ "/src/c.c" });
    if (include_dir) |dir| {
        c_translate.addIncludeDir(dir);
    }
    c_translate.output_dir = thisDir() ++ "/src";
    c_translate.out_basename = "c.zig";
    c_translate.step.make() catch unreachable;
}

fn buildFreeType(b: *std.build.Builder, mode: std.builtin.Mode, target: std.zig.CrossTarget, comptime base_dir: []const u8, _: Options) *std.build.LibExeObjStep {
    const main_abs = std.fs.path.join(b.allocator, &.{ base_dir, "/src/base/ftbase.c" }) catch unreachable;
    const lib = b.addStaticLibrary("freetype", main_abs);
    lib.defineCMacro("FT2_BUILD_LIBRARY", "1");
    lib.defineCMacro("HAVE_UNISTD_H", "1");
    lib.defineCMacro("HAVE_FCNTL_H", "1");
    lib.setBuildMode(mode);
    lib.setTarget(target);
    lib.linkLibC();

    const detected_target = (std.zig.system.NativeTargetInfo.detect(b.allocator, target) catch unreachable).target;

    var sources = std.ArrayList([]const u8).init(b.allocator);
    defer sources.deinit();

    inline for (freetype_base_sources) |source| {
        sources.append(base_dir ++ source) catch unreachable;
    }

    sources.append(switch (detected_target.os.tag) {
        .windows => base_dir ++ "/builds/windows/ftsystem.c",
        .macos, .linux => base_dir ++ "/builds/unix/ftsystem.c",
        else => base_dir ++ "/src/base/ftsystem.c",
    }) catch unreachable;

    lib.addCSourceFiles(sources.items, &.{});
    lib.addIncludePath(base_dir ++ "/include");

    lib.install();
    return lib;
}

pub fn build(b: *std.build.Builder) !void {
    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const main_tests = b.addTestExe("test", "src/main.zig");
    main_tests.setBuildMode(mode);
    main_tests.setTarget(target);

    // Build and Link FreeType
    const freetype = buildFreeType(b, mode, target, thisDir() ++ "/upstream/freetype/", .{});
    main_tests.linkLibrary(freetype);
    // Translate Headers
    translateHeaders(b, thisDir() ++ "/upstream/freetype/include");
    // Add Package
    main_tests.addPackagePath("freetype", "src/main.zig");

    main_tests.install();
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
