const std = @import("std");

const ft_root = thisDir() ++ "/upstream/freetype";

pub const Options = struct {
    //
    // Font drivers
    // at least one is needed
    //

    // BDF font driver
    bdf: bool = false,
    // CFF/OpenType font driver
    cff: bool = false,
    // Type 1 CID-keyed font driver
    type1cid: bool = false,
    // PCF font driver
    pcf: bool = false,
    // PFR/TrueDoc font driver
    pfr: bool = false,
    // SFNT files support (TrueType & OpenType)
    sfnt: bool = false,
    // TrueType font driver
    truetype: bool = false,
    // Type 1 font driver
    type1: bool = false,
    // Type 42 font driver
    type42: bool = false,
    // Windows FONT / FNT font driver
    winfnt: bool = false,

    //
    // Auxiliary modules
    //

    // auto hinting support
    autofit: bool = false,
    // cache sub-system (in beta)
    cache_subsystem: bool = true,
    // support for compressed fonts (.gz)
    gzip: bool = false,
    // support for compressed fonts (.Z)
    lzw: bool = false,
    // support for compressed fonts (.bz2)
    bzip2: bool = false,
    // TrueTypeGX/AAT table validation
    gx_validation: bool = false,
    // OpenType table validation
    opentype_validation: bool = false,
    // PostScript Type 1 parsing
    psaux: bool = false,
    // PostScript hinting module
    pshinter: bool = false,
    // PostScript glyph names support
    psnames: bool = false,
    // OpenType SVG glyph support
    svg: bool = false,

    //
    // Rasterizers
    // at least one is needed for vector formats
    //

    // monochrome rasterizer
    raster: bool = false,
    // Signed Distance Field driver
    sdf: bool = false,
    // anti-aliasing rasterizer
    smooth: bool = false,
};

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}

fn buildFreeType(b: *std.build.Builder, mode: std.builtin.Mode, target: std.zig.CrossTarget, custom_config_path: ?[]const u8, comptime options: Options) !*std.build.LibExeObjStep {
    const lib = b.addStaticLibrary("freetype", ft_root ++ "/src/base/ftbase.c");
    lib.defineCMacro("FT2_BUILD_LIBRARY", "1");
    lib.setBuildMode(mode);
    lib.setTarget(target);
    lib.linkLibC();
    lib.addIncludePath(ft_root ++ "/include");
    if (custom_config_path) |path| lib.addIncludeDir(path);

    var sources = std.ArrayList([]const u8).init(b.allocator);
    defer sources.deinit();

    inline for (freetype_base_sources) |source|
        try sources.append(ft_root ++ source);

    if (options.bdf) {
        try sources.append(ft_root ++ "/src/base/ftbdf.c");
        try sources.append(ft_root ++ "/src/bdf/bdf.c");
    }
    if (options.cff) {
        if (!options.sfnt) @compileError("CFF requires SFNT module");
        if (!options.pshinter) @compileError("CFF requires PSHinter module");
        if (!options.psnames) @compileError("CFF requires PSNames module");
        try sources.append(ft_root ++ "/src/cff/cff.c");
    }
    if (options.type1cid) {
        if (!options.psaux) @compileError("Type1CID requires PSAux module");
        if (!options.pshinter) @compileError("Type1CID requires PSHinter module");
        if (!options.psnames) @compileError("Type1CID requires PSNames module");
        try sources.append(ft_root ++ "/src/base/ftcid.c");
        try sources.append(ft_root ++ "/src/cid/type1cid.c");
    }
    if (options.pcf) try sources.append(ft_root ++ "/src/pcf/pcf.c");
    if (options.pfr) {
        try sources.append(ft_root ++ "/src/base/ftpfr.c");
        try sources.append(ft_root ++ "/src/pfr/pfr.c");
    }
    if (options.sfnt) try sources.append(ft_root ++ "/src/sfnt/sfnt.c");
    if (options.truetype) {
        if (!options.sfnt) @compileError("TrueType requires SFNT module");
        if (!options.psnames) @compileError("TrueType requires PSNames module");
        try sources.append(ft_root ++ "/src/truetype/truetype.c");
    }
    if (options.type1) {
        if (!options.psaux) @compileError("Type1 requires PSAux module");
        if (!options.pshinter) @compileError("Type1 requires PSHinter module");
        if (!options.psnames) @compileError("Type1 requires PSNames module");
        try sources.append(ft_root ++ "/src/base/fttype1.c");
        try sources.append(ft_root ++ "/src/base/ftfstype.c");
        try sources.append(ft_root ++ "/src/type1/type1.c");
    }
    if (options.type42) {
        if (!options.truetype) @compileError("Type42 requires TrueType module");
        try sources.append(ft_root ++ "/src/type42/type42.c");
    }
    if (options.winfnt) {
        try sources.append(ft_root ++ "/src/base/ftwinfnt.c");
        try sources.append(ft_root ++ "/src/winfonts/winfnt.c");
    }

    if (options.autofit) try sources.append(ft_root ++ "/src/autofit/autofit.c");
    if (options.cache_subsystem) try sources.append(ft_root ++ "/src/cache/ftcache.c");
    if (options.gzip) try sources.append(ft_root ++ "/src/gzip/ftgzip.c");
    if (options.lzw) try sources.append(ft_root ++ "/src/lzw/ftlzw.c");
    if (options.bzip2) try sources.append(ft_root ++ "/src/bzip2/ftbzip2.c");
    if (options.gx_validation) try sources.append(ft_root ++ "/src/gxvalid/gxvalid.c");
    if (options.opentype_validation) try sources.append(ft_root ++ "/src/otvalid/otvalid.c");
    if (options.psaux) try sources.append(ft_root ++ "/src/psaux/psaux.c");
    if (options.pshinter) try sources.append(ft_root ++ "/src/pshinter/pshinter.c");
    if (options.psnames) try sources.append(ft_root ++ "/src/psnames/psnames.c");
    if (options.svg) try sources.append(ft_root ++ "/src/svg/ftsvg.c");

    if (options.raster) try sources.append(ft_root ++ "/src/raster/raster.c");
    if (options.sdf) try sources.append(ft_root ++ "/src/sdf/sdf.c");
    if (options.smooth) try sources.append(ft_root ++ "/src/smooth/smooth.c");

    const detected_target = (try std.zig.system.NativeTargetInfo.detect(b.allocator, target)).target;

    if (detected_target.os.tag == .windows) {
        try sources.append(ft_root ++ "/builds/windows/ftsystem.c");
        try sources.append(ft_root ++ "/builds/windows/ftdebug.c");
    } else {
        try sources.append(ft_root ++ "/src/base/ftsystem.c");
        try sources.append(ft_root ++ "/src/base/ftdebug.c");
    }
    if (detected_target.os.tag.isBSD() or detected_target.os.tag == .linux) {
        lib.defineCMacro("HAVE_UNISTD_H", "1");
        lib.defineCMacro("HAVE_FCNTL_H", "1");
        try sources.append(ft_root ++ "/builds/unix/ftsystem.c");
        if (detected_target.os.tag == .macos) {
            try sources.append(ft_root ++ "/src/base/ftmac.c");
        }
    }

    lib.addCSourceFiles(sources.items, &.{});
    lib.install();

    return lib;
}

pub fn build(b: *std.build.Builder) !void {
    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const freetype = try buildFreeType(b, mode, target, thisDir() ++ "/test/ft", Options{
        .bdf = true,
        .cff = true,
        .type1cid = true,
        .pcf = true,
        .pfr = true,
        .sfnt = true,
        .truetype = true,
        .type1 = true,
        .type42 = true,
        .winfnt = true,
        .autofit = true,
        .cache_subsystem = true,
        .gzip = true,
        .lzw = true,
        .bzip2 = true,
        .gx_validation = true,
        .opentype_validation = true,
        .psaux = true,
        .pshinter = true,
        .psnames = true,
        .svg = true,
        .raster = true,
        .sdf = true,
        .smooth = true,
    });

    const dedicated_tests = b.addTest("src/main.zig");
    dedicated_tests.setBuildMode(mode);
    dedicated_tests.setTarget(target);
    dedicated_tests.linkLibrary(freetype);
    dedicated_tests.addIncludePath(ft_root ++ "/include");

    const main_tests = b.addTest("test/main.zig");
    main_tests.setBuildMode(mode);
    main_tests.setTarget(target);
    main_tests.addPackagePath("freetype", "src/main.zig");
    main_tests.linkLibrary(freetype);
    main_tests.addIncludePath(thisDir() ++ "/test/ft");
    main_tests.addIncludePath(ft_root ++ "/include");

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&dedicated_tests.step);
    test_step.dependOn(&main_tests.step);
}

const freetype_base_sources = &[_][]const u8{
    "/src/base/ftsystem.c",
    "/src/base/ftinit.c",
    "/src/base/ftbbox.c",
    "/src/base/ftglyph.c",
    "/src/base/ftbitmap.c",
    "/src/base/ftgasp.c",
    "/src/base/ftgxval.c",
    "/src/base/ftmm.c",
    "/src/base/ftotval.c",
    "/src/base/ftpatent.c",
    "/src/base/ftstroke.c",
    "/src/base/ftsynth.c",
};
