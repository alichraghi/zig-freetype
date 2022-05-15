pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data,
    __ctype_b: [*c]const c_ushort,
    __ctype_tolower: [*c]const c_int,
    __ctype_toupper: [*c]const c_int,
    __names: [13][*c]const u8,
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: usize) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_1 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: union_unnamed_1,
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*struct__IO_marker,
    _chain: [*c]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: [*c]struct__IO_FILE,
    _freeres_buf: ?*anyopaque,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub fn vprintf(arg___fmt: [*c]const u8, arg___arg: [*c]struct___va_list_tag) callconv(.C) c_int {
    var __fmt = arg___fmt;
    var __arg = arg___arg;
    return vfprintf(stdout, __fmt, __arg);
}
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub fn getchar() callconv(.C) c_int {
    return getc(stdin);
}
pub fn getc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__fp.*._IO_read_ptr >= __fp.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(__fp) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub fn getchar_unlocked() callconv(.C) c_int {
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(stdin.*._IO_read_ptr >= stdin.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(stdin) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &stdin.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub fn fgetc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__fp.*._IO_read_ptr >= __fp.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(__fp) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub fn putchar(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return putc(__c, stdout);
}
pub fn fputc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    var __stream = arg___stream;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__stream.*._IO_write_ptr >= __stream.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(__stream, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub fn putc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    var __stream = arg___stream;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__stream.*._IO_write_ptr >= __stream.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(__stream, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub fn putchar_unlocked(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(stdout.*._IO_write_ptr >= stdout.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(stdout, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &stdout.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub fn feof_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    return @boolToInt((__stream.*._flags & @as(c_int, 16)) != @as(c_int, 0));
}
pub fn ferror_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    return @boolToInt((__stream.*._flags & @as(c_int, 32)) != @as(c_int, 0));
}
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub fn atof(arg___nptr: [*c]const u8) callconv(.C) f64 {
    var __nptr = arg___nptr;
    return strtod(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*anyopaque, @as(c_int, 0)))));
}
pub fn atoi(arg___nptr: [*c]const u8) callconv(.C) c_int {
    var __nptr = arg___nptr;
    return @bitCast(c_int, @truncate(c_int, strtol(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*anyopaque, @as(c_int, 0)))), @as(c_int, 10))));
}
pub fn atol(arg___nptr: [*c]const u8) callconv(.C) c_long {
    var __nptr = arg___nptr;
    return strtol(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*anyopaque, @as(c_int, 0)))), @as(c_int, 10));
}
pub fn atoll(arg___nptr: [*c]const u8) callconv(.C) c_longlong {
    var __nptr = arg___nptr;
    return strtoll(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*anyopaque, @as(c_int, 0)))), @as(c_int, 10));
}
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint16_t, @truncate(c_short, ((@bitCast(c_int, @as(c_uint, __bsx)) >> @intCast(@import("std").math.Log2Int(c_int), 8)) & @as(c_int, 255)) | ((@bitCast(c_int, @as(c_uint, __bsx)) & @as(c_int, 255)) << @intCast(@import("std").math.Log2Int(c_int), 8))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(@import("std").math.Log2Int(c_uint), 24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 255)) << @intCast(@import("std").math.Log2Int(c_uint), 24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint64_t, @truncate(c_ulong, ((((((((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 56)) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 71776119061217280)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 280375465082880)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 1095216660480)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 4278190080)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 16711680)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 65280)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 255)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 56))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list,
    __next: [*c]struct___pthread_internal_list,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist,
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [7]u8,
    __pad2: c_ulong,
    __flags: c_uint,
};
const struct_unnamed_3 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
const union_unnamed_2 = extern union {
    __wseq: c_ulonglong,
    __wseq32: struct_unnamed_3,
};
const struct_unnamed_5 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
const union_unnamed_4 = extern union {
    __g1_start: c_ulonglong,
    __g1_start32: struct_unnamed_5,
};
pub const struct___pthread_cond_s = extern struct {
    unnamed_0: union_unnamed_2,
    unnamed_1: union_unnamed_4,
    __g_refs: [2]c_uint,
    __g_size: [2]c_uint,
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [2]c_uint,
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32,
    rptr: [*c]i32,
    state: [*c]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: [*c]i32,
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub fn bsearch(arg___key: ?*const anyopaque, arg___base: ?*const anyopaque, arg___nmemb: usize, arg___size: usize, arg___compar: __compar_fn_t) callconv(.C) ?*anyopaque {
    var __key = arg___key;
    var __base = arg___base;
    var __nmemb = arg___nmemb;
    var __size = arg___size;
    var __compar = arg___compar;
    var __l: usize = undefined;
    var __u: usize = undefined;
    var __idx: usize = undefined;
    var __p: ?*const anyopaque = undefined;
    var __comparison: c_int = undefined;
    __l = 0;
    __u = __nmemb;
    while (__l < __u) {
        __idx = (__l +% __u) / @bitCast(c_ulong, @as(c_long, @as(c_int, 2)));
        __p = @intToPtr(?*anyopaque, @ptrToInt(@ptrCast([*c]const u8, @alignCast(@import("std").meta.alignment(u8), __base)) + (__idx *% __size)));
        __comparison = __compar.?(__key, __p);
        if (__comparison < @as(c_int, 0)) {
            __u = __idx;
        } else if (__comparison > @as(c_int, 0)) {
            __l = __idx +% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
        } else return @intToPtr(?*anyopaque, @ptrToInt(__p));
    }
    return @intToPtr(?*anyopaque, @as(c_int, 0));
}
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const __jmp_buf = [8]c_long;
pub const struct___jmp_buf_tag = extern struct {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
};
pub const jmp_buf = [1]struct___jmp_buf_tag;
pub extern fn setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn __sigsetjmp(__env: [*c]struct___jmp_buf_tag, __savemask: c_int) c_int;
pub extern fn _setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub extern fn _longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const sigjmp_buf = [1]struct___jmp_buf_tag;
pub extern fn siglongjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const FT_Int16 = c_short;
pub const FT_UInt16 = c_ushort;
pub const FT_Int32 = c_int;
pub const FT_UInt32 = c_uint;
pub const FT_Fast = c_int;
pub const FT_UFast = c_uint;
pub const FT_Int64 = c_long;
pub const FT_UInt64 = c_ulong;
pub const FT_Memory = [*c]struct_FT_MemoryRec_;
pub const FT_Alloc_Func = ?fn (FT_Memory, c_long) callconv(.C) ?*anyopaque;
pub const FT_Free_Func = ?fn (FT_Memory, ?*anyopaque) callconv(.C) void;
pub const FT_Realloc_Func = ?fn (FT_Memory, c_long, c_long, ?*anyopaque) callconv(.C) ?*anyopaque;
pub const struct_FT_MemoryRec_ = extern struct {
    user: ?*anyopaque,
    alloc: FT_Alloc_Func,
    free: FT_Free_Func,
    realloc: FT_Realloc_Func,
};
pub const union_FT_StreamDesc_ = extern union {
    value: c_long,
    pointer: ?*anyopaque,
};
pub const FT_StreamDesc = union_FT_StreamDesc_;
pub const FT_Stream = [*c]struct_FT_StreamRec_;
pub const FT_Stream_IoFunc = ?fn (FT_Stream, c_ulong, [*c]u8, c_ulong) callconv(.C) c_ulong;
pub const FT_Stream_CloseFunc = ?fn (FT_Stream) callconv(.C) void;
pub const struct_FT_StreamRec_ = extern struct {
    base: [*c]u8,
    size: c_ulong,
    pos: c_ulong,
    descriptor: FT_StreamDesc,
    pathname: FT_StreamDesc,
    read: FT_Stream_IoFunc,
    close: FT_Stream_CloseFunc,
    memory: FT_Memory,
    cursor: [*c]u8,
    limit: [*c]u8,
};
pub const FT_StreamRec = struct_FT_StreamRec_;
pub const FT_Pos = c_long;
pub const struct_FT_Vector_ = extern struct {
    x: FT_Pos,
    y: FT_Pos,
};
pub const FT_Vector = struct_FT_Vector_;
pub const struct_FT_BBox_ = extern struct {
    xMin: FT_Pos,
    yMin: FT_Pos,
    xMax: FT_Pos,
    yMax: FT_Pos,
};
pub const FT_BBox = struct_FT_BBox_;
pub const FT_PIXEL_MODE_NONE: c_int = 0;
pub const FT_PIXEL_MODE_MONO: c_int = 1;
pub const FT_PIXEL_MODE_GRAY: c_int = 2;
pub const FT_PIXEL_MODE_GRAY2: c_int = 3;
pub const FT_PIXEL_MODE_GRAY4: c_int = 4;
pub const FT_PIXEL_MODE_LCD: c_int = 5;
pub const FT_PIXEL_MODE_LCD_V: c_int = 6;
pub const FT_PIXEL_MODE_BGRA: c_int = 7;
pub const FT_PIXEL_MODE_MAX: c_int = 8;
pub const enum_FT_Pixel_Mode_ = c_uint;
pub const FT_Pixel_Mode = enum_FT_Pixel_Mode_;
pub const struct_FT_Bitmap_ = extern struct {
    rows: c_uint,
    width: c_uint,
    pitch: c_int,
    buffer: [*c]u8,
    num_grays: c_ushort,
    pixel_mode: u8,
    palette_mode: u8,
    palette: ?*anyopaque,
};
pub const FT_Bitmap = struct_FT_Bitmap_;
pub const struct_FT_Outline_ = extern struct {
    n_contours: c_short,
    n_points: c_short,
    points: [*c]FT_Vector,
    tags: [*c]u8,
    contours: [*c]c_short,
    flags: c_int,
};
pub const FT_Outline = struct_FT_Outline_;
pub const FT_Outline_MoveToFunc = ?fn ([*c]const FT_Vector, ?*anyopaque) callconv(.C) c_int;
pub const FT_Outline_LineToFunc = ?fn ([*c]const FT_Vector, ?*anyopaque) callconv(.C) c_int;
pub const FT_Outline_ConicToFunc = ?fn ([*c]const FT_Vector, [*c]const FT_Vector, ?*anyopaque) callconv(.C) c_int;
pub const FT_Outline_CubicToFunc = ?fn ([*c]const FT_Vector, [*c]const FT_Vector, [*c]const FT_Vector, ?*anyopaque) callconv(.C) c_int;
pub const struct_FT_Outline_Funcs_ = extern struct {
    move_to: FT_Outline_MoveToFunc,
    line_to: FT_Outline_LineToFunc,
    conic_to: FT_Outline_ConicToFunc,
    cubic_to: FT_Outline_CubicToFunc,
    shift: c_int,
    delta: FT_Pos,
};
pub const FT_Outline_Funcs = struct_FT_Outline_Funcs_;
pub const FT_GLYPH_FORMAT_NONE: c_int = 0;
pub const FT_GLYPH_FORMAT_COMPOSITE: c_int = 1668246896;
pub const FT_GLYPH_FORMAT_BITMAP: c_int = 1651078259;
pub const FT_GLYPH_FORMAT_OUTLINE: c_int = 1869968492;
pub const FT_GLYPH_FORMAT_PLOTTER: c_int = 1886154612;
pub const FT_GLYPH_FORMAT_SVG: c_int = 1398163232;
pub const enum_FT_Glyph_Format_ = c_uint;
pub const FT_Glyph_Format = enum_FT_Glyph_Format_;
pub const struct_FT_Span_ = extern struct {
    x: c_short,
    len: c_ushort,
    coverage: u8,
};
pub const FT_Span = struct_FT_Span_;
pub const FT_SpanFunc = ?fn (c_int, c_int, [*c]const FT_Span, ?*anyopaque) callconv(.C) void;
pub const FT_Raster_BitTest_Func = ?fn (c_int, c_int, ?*anyopaque) callconv(.C) c_int;
pub const FT_Raster_BitSet_Func = ?fn (c_int, c_int, ?*anyopaque) callconv(.C) void;
pub const struct_FT_Raster_Params_ = extern struct {
    target: [*c]const FT_Bitmap,
    source: ?*const anyopaque,
    flags: c_int,
    gray_spans: FT_SpanFunc,
    black_spans: FT_SpanFunc,
    bit_test: FT_Raster_BitTest_Func,
    bit_set: FT_Raster_BitSet_Func,
    user: ?*anyopaque,
    clip_box: FT_BBox,
};
pub const FT_Raster_Params = struct_FT_Raster_Params_;
pub const struct_FT_RasterRec_ = opaque {};
pub const FT_Raster = ?*struct_FT_RasterRec_;
pub const FT_Raster_NewFunc = ?fn (?*anyopaque, [*c]FT_Raster) callconv(.C) c_int;
pub const FT_Raster_DoneFunc = ?fn (FT_Raster) callconv(.C) void;
pub const FT_Raster_ResetFunc = ?fn (FT_Raster, [*c]u8, c_ulong) callconv(.C) void;
pub const FT_Raster_SetModeFunc = ?fn (FT_Raster, c_ulong, ?*anyopaque) callconv(.C) c_int;
pub const FT_Raster_RenderFunc = ?fn (FT_Raster, [*c]const FT_Raster_Params) callconv(.C) c_int;
pub const struct_FT_Raster_Funcs_ = extern struct {
    glyph_format: FT_Glyph_Format,
    raster_new: FT_Raster_NewFunc,
    raster_reset: FT_Raster_ResetFunc,
    raster_set_mode: FT_Raster_SetModeFunc,
    raster_render: FT_Raster_RenderFunc,
    raster_done: FT_Raster_DoneFunc,
};
pub const FT_Raster_Funcs = struct_FT_Raster_Funcs_;
pub const FT_Bool = u8;
pub const FT_FWord = c_short;
pub const FT_UFWord = c_ushort;
pub const FT_Char = i8;
pub const FT_Byte = u8;
pub const FT_Bytes = [*c]const FT_Byte;
pub const FT_Tag = FT_UInt32;
pub const FT_String = u8;
pub const FT_Short = c_short;
pub const FT_UShort = c_ushort;
pub const FT_Int = c_int;
pub const FT_UInt = c_uint;
pub const FT_Long = c_long;
pub const FT_ULong = c_ulong;
pub const FT_F2Dot14 = c_short;
pub const FT_F26Dot6 = c_long;
pub const FT_Fixed = c_long;
pub const FT_Error = c_int;
pub const FT_Pointer = ?*anyopaque;
pub const FT_Offset = usize;
pub const FT_PtrDist = ptrdiff_t;
pub const struct_FT_UnitVector_ = extern struct {
    x: FT_F2Dot14,
    y: FT_F2Dot14,
};
pub const FT_UnitVector = struct_FT_UnitVector_;
pub const struct_FT_Matrix_ = extern struct {
    xx: FT_Fixed,
    xy: FT_Fixed,
    yx: FT_Fixed,
    yy: FT_Fixed,
};
pub const FT_Matrix = struct_FT_Matrix_;
pub const struct_FT_Data_ = extern struct {
    pointer: [*c]const FT_Byte,
    length: FT_UInt,
};
pub const FT_Data = struct_FT_Data_;
pub const FT_Generic_Finalizer = ?fn (?*anyopaque) callconv(.C) void;
pub const struct_FT_Generic_ = extern struct {
    data: ?*anyopaque,
    finalizer: FT_Generic_Finalizer,
};
pub const FT_Generic = struct_FT_Generic_;
pub const FT_ListNode = [*c]struct_FT_ListNodeRec_;
pub const struct_FT_ListNodeRec_ = extern struct {
    prev: FT_ListNode,
    next: FT_ListNode,
    data: ?*anyopaque,
};
pub const struct_FT_ListRec_ = extern struct {
    head: FT_ListNode,
    tail: FT_ListNode,
};
pub const FT_List = [*c]struct_FT_ListRec_;
pub const FT_ListNodeRec = struct_FT_ListNodeRec_;
pub const FT_ListRec = struct_FT_ListRec_;
pub const FT_Mod_Err_Base: c_int = 0;
pub const FT_Mod_Err_Autofit: c_int = 0;
pub const FT_Mod_Err_BDF: c_int = 0;
pub const FT_Mod_Err_Bzip2: c_int = 0;
pub const FT_Mod_Err_Cache: c_int = 0;
pub const FT_Mod_Err_CFF: c_int = 0;
pub const FT_Mod_Err_CID: c_int = 0;
pub const FT_Mod_Err_Gzip: c_int = 0;
pub const FT_Mod_Err_LZW: c_int = 0;
pub const FT_Mod_Err_OTvalid: c_int = 0;
pub const FT_Mod_Err_PCF: c_int = 0;
pub const FT_Mod_Err_PFR: c_int = 0;
pub const FT_Mod_Err_PSaux: c_int = 0;
pub const FT_Mod_Err_PShinter: c_int = 0;
pub const FT_Mod_Err_PSnames: c_int = 0;
pub const FT_Mod_Err_Raster: c_int = 0;
pub const FT_Mod_Err_SFNT: c_int = 0;
pub const FT_Mod_Err_Smooth: c_int = 0;
pub const FT_Mod_Err_TrueType: c_int = 0;
pub const FT_Mod_Err_Type1: c_int = 0;
pub const FT_Mod_Err_Type42: c_int = 0;
pub const FT_Mod_Err_Winfonts: c_int = 0;
pub const FT_Mod_Err_GXvalid: c_int = 0;
pub const FT_Mod_Err_Sdf: c_int = 0;
pub const FT_Mod_Err_Max: c_int = 1;
const enum_unnamed_6 = c_uint;
pub const FT_Err_Ok: c_int = 0;
pub const FT_Err_Cannot_Open_Resource: c_int = 1;
pub const FT_Err_Unknown_File_Format: c_int = 2;
pub const FT_Err_Invalid_File_Format: c_int = 3;
pub const FT_Err_Invalid_Version: c_int = 4;
pub const FT_Err_Lower_Module_Version: c_int = 5;
pub const FT_Err_Invalid_Argument: c_int = 6;
pub const FT_Err_Unimplemented_Feature: c_int = 7;
pub const FT_Err_Invalid_Table: c_int = 8;
pub const FT_Err_Invalid_Offset: c_int = 9;
pub const FT_Err_Array_Too_Large: c_int = 10;
pub const FT_Err_Missing_Module: c_int = 11;
pub const FT_Err_Missing_Property: c_int = 12;
pub const FT_Err_Invalid_Glyph_Index: c_int = 16;
pub const FT_Err_Invalid_Character_Code: c_int = 17;
pub const FT_Err_Invalid_Glyph_Format: c_int = 18;
pub const FT_Err_Cannot_Render_Glyph: c_int = 19;
pub const FT_Err_Invalid_Outline: c_int = 20;
pub const FT_Err_Invalid_Composite: c_int = 21;
pub const FT_Err_Too_Many_Hints: c_int = 22;
pub const FT_Err_Invalid_Pixel_Size: c_int = 23;
pub const FT_Err_Invalid_SVG_Document: c_int = 24;
pub const FT_Err_Invalid_Handle: c_int = 32;
pub const FT_Err_Invalid_Library_Handle: c_int = 33;
pub const FT_Err_Invalid_Driver_Handle: c_int = 34;
pub const FT_Err_Invalid_Face_Handle: c_int = 35;
pub const FT_Err_Invalid_Size_Handle: c_int = 36;
pub const FT_Err_Invalid_Slot_Handle: c_int = 37;
pub const FT_Err_Invalid_CharMap_Handle: c_int = 38;
pub const FT_Err_Invalid_Cache_Handle: c_int = 39;
pub const FT_Err_Invalid_Stream_Handle: c_int = 40;
pub const FT_Err_Too_Many_Drivers: c_int = 48;
pub const FT_Err_Too_Many_Extensions: c_int = 49;
pub const FT_Err_Out_Of_Memory: c_int = 64;
pub const FT_Err_Unlisted_Object: c_int = 65;
pub const FT_Err_Cannot_Open_Stream: c_int = 81;
pub const FT_Err_Invalid_Stream_Seek: c_int = 82;
pub const FT_Err_Invalid_Stream_Skip: c_int = 83;
pub const FT_Err_Invalid_Stream_Read: c_int = 84;
pub const FT_Err_Invalid_Stream_Operation: c_int = 85;
pub const FT_Err_Invalid_Frame_Operation: c_int = 86;
pub const FT_Err_Nested_Frame_Access: c_int = 87;
pub const FT_Err_Invalid_Frame_Read: c_int = 88;
pub const FT_Err_Raster_Uninitialized: c_int = 96;
pub const FT_Err_Raster_Corrupted: c_int = 97;
pub const FT_Err_Raster_Overflow: c_int = 98;
pub const FT_Err_Raster_Negative_Height: c_int = 99;
pub const FT_Err_Too_Many_Caches: c_int = 112;
pub const FT_Err_Invalid_Opcode: c_int = 128;
pub const FT_Err_Too_Few_Arguments: c_int = 129;
pub const FT_Err_Stack_Overflow: c_int = 130;
pub const FT_Err_Code_Overflow: c_int = 131;
pub const FT_Err_Bad_Argument: c_int = 132;
pub const FT_Err_Divide_By_Zero: c_int = 133;
pub const FT_Err_Invalid_Reference: c_int = 134;
pub const FT_Err_Debug_OpCode: c_int = 135;
pub const FT_Err_ENDF_In_Exec_Stream: c_int = 136;
pub const FT_Err_Nested_DEFS: c_int = 137;
pub const FT_Err_Invalid_CodeRange: c_int = 138;
pub const FT_Err_Execution_Too_Long: c_int = 139;
pub const FT_Err_Too_Many_Function_Defs: c_int = 140;
pub const FT_Err_Too_Many_Instruction_Defs: c_int = 141;
pub const FT_Err_Table_Missing: c_int = 142;
pub const FT_Err_Horiz_Header_Missing: c_int = 143;
pub const FT_Err_Locations_Missing: c_int = 144;
pub const FT_Err_Name_Table_Missing: c_int = 145;
pub const FT_Err_CMap_Table_Missing: c_int = 146;
pub const FT_Err_Hmtx_Table_Missing: c_int = 147;
pub const FT_Err_Post_Table_Missing: c_int = 148;
pub const FT_Err_Invalid_Horiz_Metrics: c_int = 149;
pub const FT_Err_Invalid_CharMap_Format: c_int = 150;
pub const FT_Err_Invalid_PPem: c_int = 151;
pub const FT_Err_Invalid_Vert_Metrics: c_int = 152;
pub const FT_Err_Could_Not_Find_Context: c_int = 153;
pub const FT_Err_Invalid_Post_Table_Format: c_int = 154;
pub const FT_Err_Invalid_Post_Table: c_int = 155;
pub const FT_Err_DEF_In_Glyf_Bytecode: c_int = 156;
pub const FT_Err_Missing_Bitmap: c_int = 157;
pub const FT_Err_Missing_SVG_Hooks: c_int = 158;
pub const FT_Err_Syntax_Error: c_int = 160;
pub const FT_Err_Stack_Underflow: c_int = 161;
pub const FT_Err_Ignore: c_int = 162;
pub const FT_Err_No_Unicode_Glyph_Name: c_int = 163;
pub const FT_Err_Glyph_Too_Big: c_int = 164;
pub const FT_Err_Missing_Startfont_Field: c_int = 176;
pub const FT_Err_Missing_Font_Field: c_int = 177;
pub const FT_Err_Missing_Size_Field: c_int = 178;
pub const FT_Err_Missing_Fontboundingbox_Field: c_int = 179;
pub const FT_Err_Missing_Chars_Field: c_int = 180;
pub const FT_Err_Missing_Startchar_Field: c_int = 181;
pub const FT_Err_Missing_Encoding_Field: c_int = 182;
pub const FT_Err_Missing_Bbx_Field: c_int = 183;
pub const FT_Err_Bbx_Too_Big: c_int = 184;
pub const FT_Err_Corrupted_Font_Header: c_int = 185;
pub const FT_Err_Corrupted_Font_Glyphs: c_int = 186;
pub const FT_Err_Max: c_int = 187;
const enum_unnamed_7 = c_uint;
pub extern fn FT_Error_String(error_code: FT_Error) [*c]const u8;
pub const struct_FT_Glyph_Metrics_ = extern struct {
    width: FT_Pos,
    height: FT_Pos,
    horiBearingX: FT_Pos,
    horiBearingY: FT_Pos,
    horiAdvance: FT_Pos,
    vertBearingX: FT_Pos,
    vertBearingY: FT_Pos,
    vertAdvance: FT_Pos,
};
pub const FT_Glyph_Metrics = struct_FT_Glyph_Metrics_;
pub const struct_FT_Bitmap_Size_ = extern struct {
    height: FT_Short,
    width: FT_Short,
    size: FT_Pos,
    x_ppem: FT_Pos,
    y_ppem: FT_Pos,
};
pub const FT_Bitmap_Size = struct_FT_Bitmap_Size_;
pub const struct_FT_LibraryRec_ = opaque {};
pub const FT_Library = ?*struct_FT_LibraryRec_;
pub const struct_FT_ModuleRec_ = opaque {};
pub const FT_Module = ?*struct_FT_ModuleRec_;
pub const struct_FT_DriverRec_ = opaque {};
pub const FT_Driver = ?*struct_FT_DriverRec_;
pub const struct_FT_RendererRec_ = opaque {};
pub const FT_Renderer = ?*struct_FT_RendererRec_;
pub const FT_Face = [*c]struct_FT_FaceRec_;
pub const FT_ENCODING_NONE: c_int = 0;
pub const FT_ENCODING_MS_SYMBOL: c_int = 1937337698;
pub const FT_ENCODING_UNICODE: c_int = 1970170211;
pub const FT_ENCODING_SJIS: c_int = 1936353651;
pub const FT_ENCODING_PRC: c_int = 1734484000;
pub const FT_ENCODING_BIG5: c_int = 1651074869;
pub const FT_ENCODING_WANSUNG: c_int = 2002873971;
pub const FT_ENCODING_JOHAB: c_int = 1785686113;
pub const FT_ENCODING_GB2312: c_int = 1734484000;
pub const FT_ENCODING_MS_SJIS: c_int = 1936353651;
pub const FT_ENCODING_MS_GB2312: c_int = 1734484000;
pub const FT_ENCODING_MS_BIG5: c_int = 1651074869;
pub const FT_ENCODING_MS_WANSUNG: c_int = 2002873971;
pub const FT_ENCODING_MS_JOHAB: c_int = 1785686113;
pub const FT_ENCODING_ADOBE_STANDARD: c_int = 1094995778;
pub const FT_ENCODING_ADOBE_EXPERT: c_int = 1094992453;
pub const FT_ENCODING_ADOBE_CUSTOM: c_int = 1094992451;
pub const FT_ENCODING_ADOBE_LATIN_1: c_int = 1818326065;
pub const FT_ENCODING_OLD_LATIN_2: c_int = 1818326066;
pub const FT_ENCODING_APPLE_ROMAN: c_int = 1634889070;
pub const enum_FT_Encoding_ = c_uint;
pub const FT_Encoding = enum_FT_Encoding_;
pub const struct_FT_CharMapRec_ = extern struct {
    face: FT_Face,
    encoding: FT_Encoding,
    platform_id: FT_UShort,
    encoding_id: FT_UShort,
};
pub const FT_CharMap = [*c]struct_FT_CharMapRec_;
pub const struct_FT_SubGlyphRec_ = opaque {};
pub const FT_SubGlyph = ?*struct_FT_SubGlyphRec_;
pub const struct_FT_Slot_InternalRec_ = opaque {};
pub const FT_Slot_Internal = ?*struct_FT_Slot_InternalRec_;
pub const struct_FT_GlyphSlotRec_ = extern struct {
    library: FT_Library,
    face: FT_Face,
    next: FT_GlyphSlot,
    glyph_index: FT_UInt,
    generic: FT_Generic,
    metrics: FT_Glyph_Metrics,
    linearHoriAdvance: FT_Fixed,
    linearVertAdvance: FT_Fixed,
    advance: FT_Vector,
    format: FT_Glyph_Format,
    bitmap: FT_Bitmap,
    bitmap_left: FT_Int,
    bitmap_top: FT_Int,
    outline: FT_Outline,
    num_subglyphs: FT_UInt,
    subglyphs: FT_SubGlyph,
    control_data: ?*anyopaque,
    control_len: c_long,
    lsb_delta: FT_Pos,
    rsb_delta: FT_Pos,
    other: ?*anyopaque,
    internal: FT_Slot_Internal,
};
pub const FT_GlyphSlot = [*c]struct_FT_GlyphSlotRec_;
pub const struct_FT_Size_Metrics_ = extern struct {
    x_ppem: FT_UShort,
    y_ppem: FT_UShort,
    x_scale: FT_Fixed,
    y_scale: FT_Fixed,
    ascender: FT_Pos,
    descender: FT_Pos,
    height: FT_Pos,
    max_advance: FT_Pos,
};
pub const FT_Size_Metrics = struct_FT_Size_Metrics_;
pub const struct_FT_Size_InternalRec_ = opaque {};
pub const FT_Size_Internal = ?*struct_FT_Size_InternalRec_;
pub const struct_FT_SizeRec_ = extern struct {
    face: FT_Face,
    generic: FT_Generic,
    metrics: FT_Size_Metrics,
    internal: FT_Size_Internal,
};
pub const FT_Size = [*c]struct_FT_SizeRec_;
pub const struct_FT_Face_InternalRec_ = opaque {};
pub const FT_Face_Internal = ?*struct_FT_Face_InternalRec_;
pub const struct_FT_FaceRec_ = extern struct {
    num_faces: FT_Long,
    face_index: FT_Long,
    face_flags: FT_Long,
    style_flags: FT_Long,
    num_glyphs: FT_Long,
    family_name: [*c]FT_String,
    style_name: [*c]FT_String,
    num_fixed_sizes: FT_Int,
    available_sizes: [*c]FT_Bitmap_Size,
    num_charmaps: FT_Int,
    charmaps: [*c]FT_CharMap,
    generic: FT_Generic,
    bbox: FT_BBox,
    units_per_EM: FT_UShort,
    ascender: FT_Short,
    descender: FT_Short,
    height: FT_Short,
    max_advance_width: FT_Short,
    max_advance_height: FT_Short,
    underline_position: FT_Short,
    underline_thickness: FT_Short,
    glyph: FT_GlyphSlot,
    size: FT_Size,
    charmap: FT_CharMap,
    driver: FT_Driver,
    memory: FT_Memory,
    stream: FT_Stream,
    sizes_list: FT_ListRec,
    autohint: FT_Generic,
    extensions: ?*anyopaque,
    internal: FT_Face_Internal,
};
pub const FT_CharMapRec = struct_FT_CharMapRec_;
pub const FT_FaceRec = struct_FT_FaceRec_;
pub const FT_SizeRec = struct_FT_SizeRec_;
pub const FT_GlyphSlotRec = struct_FT_GlyphSlotRec_;
pub extern fn FT_Init_FreeType(alibrary: [*c]FT_Library) FT_Error;
pub extern fn FT_Done_FreeType(library: FT_Library) FT_Error;
pub const struct_FT_Parameter_ = extern struct {
    tag: FT_ULong,
    data: FT_Pointer,
};
pub const FT_Parameter = struct_FT_Parameter_;
pub const struct_FT_Open_Args_ = extern struct {
    flags: FT_UInt,
    memory_base: [*c]const FT_Byte,
    memory_size: FT_Long,
    pathname: [*c]FT_String,
    stream: FT_Stream,
    driver: FT_Module,
    num_params: FT_Int,
    params: [*c]FT_Parameter,
};
pub const FT_Open_Args = struct_FT_Open_Args_;
pub extern fn FT_New_Face(library: FT_Library, filepathname: [*c]const u8, face_index: FT_Long, aface: [*c]FT_Face) FT_Error;
pub extern fn FT_New_Memory_Face(library: FT_Library, file_base: [*c]const FT_Byte, file_size: FT_Long, face_index: FT_Long, aface: [*c]FT_Face) FT_Error;
pub extern fn FT_Open_Face(library: FT_Library, args: [*c]const FT_Open_Args, face_index: FT_Long, aface: [*c]FT_Face) FT_Error;
pub extern fn FT_Attach_File(face: FT_Face, filepathname: [*c]const u8) FT_Error;
pub extern fn FT_Attach_Stream(face: FT_Face, parameters: [*c]FT_Open_Args) FT_Error;
pub extern fn FT_Reference_Face(face: FT_Face) FT_Error;
pub extern fn FT_Done_Face(face: FT_Face) FT_Error;
pub extern fn FT_Select_Size(face: FT_Face, strike_index: FT_Int) FT_Error;
pub const FT_SIZE_REQUEST_TYPE_NOMINAL: c_int = 0;
pub const FT_SIZE_REQUEST_TYPE_REAL_DIM: c_int = 1;
pub const FT_SIZE_REQUEST_TYPE_BBOX: c_int = 2;
pub const FT_SIZE_REQUEST_TYPE_CELL: c_int = 3;
pub const FT_SIZE_REQUEST_TYPE_SCALES: c_int = 4;
pub const FT_SIZE_REQUEST_TYPE_MAX: c_int = 5;
pub const enum_FT_Size_Request_Type_ = c_uint;
pub const FT_Size_Request_Type = enum_FT_Size_Request_Type_;
pub const struct_FT_Size_RequestRec_ = extern struct {
    type: FT_Size_Request_Type,
    width: FT_Long,
    height: FT_Long,
    horiResolution: FT_UInt,
    vertResolution: FT_UInt,
};
pub const FT_Size_RequestRec = struct_FT_Size_RequestRec_;
pub const FT_Size_Request = [*c]struct_FT_Size_RequestRec_;
pub extern fn FT_Request_Size(face: FT_Face, req: FT_Size_Request) FT_Error;
pub extern fn FT_Set_Char_Size(face: FT_Face, char_width: FT_F26Dot6, char_height: FT_F26Dot6, horz_resolution: FT_UInt, vert_resolution: FT_UInt) FT_Error;
pub extern fn FT_Set_Pixel_Sizes(face: FT_Face, pixel_width: FT_UInt, pixel_height: FT_UInt) FT_Error;
pub extern fn FT_Load_Glyph(face: FT_Face, glyph_index: FT_UInt, load_flags: FT_Int32) FT_Error;
pub extern fn FT_Load_Char(face: FT_Face, char_code: FT_ULong, load_flags: FT_Int32) FT_Error;
pub extern fn FT_Set_Transform(face: FT_Face, matrix: [*c]FT_Matrix, delta: [*c]FT_Vector) void;
pub extern fn FT_Get_Transform(face: FT_Face, matrix: [*c]FT_Matrix, delta: [*c]FT_Vector) void;
pub const FT_RENDER_MODE_NORMAL: c_int = 0;
pub const FT_RENDER_MODE_LIGHT: c_int = 1;
pub const FT_RENDER_MODE_MONO: c_int = 2;
pub const FT_RENDER_MODE_LCD: c_int = 3;
pub const FT_RENDER_MODE_LCD_V: c_int = 4;
pub const FT_RENDER_MODE_SDF: c_int = 5;
pub const FT_RENDER_MODE_MAX: c_int = 6;
pub const enum_FT_Render_Mode_ = c_uint;
pub const FT_Render_Mode = enum_FT_Render_Mode_;
pub extern fn FT_Render_Glyph(slot: FT_GlyphSlot, render_mode: FT_Render_Mode) FT_Error;
pub const FT_KERNING_DEFAULT: c_int = 0;
pub const FT_KERNING_UNFITTED: c_int = 1;
pub const FT_KERNING_UNSCALED: c_int = 2;
pub const enum_FT_Kerning_Mode_ = c_uint;
pub const FT_Kerning_Mode = enum_FT_Kerning_Mode_;
pub extern fn FT_Get_Kerning(face: FT_Face, left_glyph: FT_UInt, right_glyph: FT_UInt, kern_mode: FT_UInt, akerning: [*c]FT_Vector) FT_Error;
pub extern fn FT_Get_Track_Kerning(face: FT_Face, point_size: FT_Fixed, degree: FT_Int, akerning: [*c]FT_Fixed) FT_Error;
pub extern fn FT_Get_Glyph_Name(face: FT_Face, glyph_index: FT_UInt, buffer: FT_Pointer, buffer_max: FT_UInt) FT_Error;
pub extern fn FT_Get_Postscript_Name(face: FT_Face) [*c]const u8;
pub extern fn FT_Select_Charmap(face: FT_Face, encoding: FT_Encoding) FT_Error;
pub extern fn FT_Set_Charmap(face: FT_Face, charmap: FT_CharMap) FT_Error;
pub extern fn FT_Get_Charmap_Index(charmap: FT_CharMap) FT_Int;
pub extern fn FT_Get_Char_Index(face: FT_Face, charcode: FT_ULong) FT_UInt;
pub extern fn FT_Get_First_Char(face: FT_Face, agindex: [*c]FT_UInt) FT_ULong;
pub extern fn FT_Get_Next_Char(face: FT_Face, char_code: FT_ULong, agindex: [*c]FT_UInt) FT_ULong;
pub extern fn FT_Face_Properties(face: FT_Face, num_properties: FT_UInt, properties: [*c]FT_Parameter) FT_Error;
pub extern fn FT_Get_Name_Index(face: FT_Face, glyph_name: [*c]const FT_String) FT_UInt;
pub extern fn FT_Get_SubGlyph_Info(glyph: FT_GlyphSlot, sub_index: FT_UInt, p_index: [*c]FT_Int, p_flags: [*c]FT_UInt, p_arg1: [*c]FT_Int, p_arg2: [*c]FT_Int, p_transform: [*c]FT_Matrix) FT_Error;
pub extern fn FT_Get_FSType_Flags(face: FT_Face) FT_UShort;
pub extern fn FT_Face_GetCharVariantIndex(face: FT_Face, charcode: FT_ULong, variantSelector: FT_ULong) FT_UInt;
pub extern fn FT_Face_GetCharVariantIsDefault(face: FT_Face, charcode: FT_ULong, variantSelector: FT_ULong) FT_Int;
pub extern fn FT_Face_GetVariantSelectors(face: FT_Face) [*c]FT_UInt32;
pub extern fn FT_Face_GetVariantsOfChar(face: FT_Face, charcode: FT_ULong) [*c]FT_UInt32;
pub extern fn FT_Face_GetCharsOfVariant(face: FT_Face, variantSelector: FT_ULong) [*c]FT_UInt32;
pub extern fn FT_MulDiv(a: FT_Long, b: FT_Long, c: FT_Long) FT_Long;
pub extern fn FT_MulFix(a: FT_Long, b: FT_Long) FT_Long;
pub extern fn FT_DivFix(a: FT_Long, b: FT_Long) FT_Long;
pub extern fn FT_RoundFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_CeilFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_FloorFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_Vector_Transform(vector: [*c]FT_Vector, matrix: [*c]const FT_Matrix) void;
pub extern fn FT_Library_Version(library: FT_Library, amajor: [*c]FT_Int, aminor: [*c]FT_Int, apatch: [*c]FT_Int) void;
pub extern fn FT_Face_CheckTrueTypePatents(face: FT_Face) FT_Bool;
pub extern fn FT_Face_SetUnpatentedHinting(face: FT_Face, value: FT_Bool) FT_Bool;
pub const FT_LCD_FILTER_NONE: c_int = 0;
pub const FT_LCD_FILTER_DEFAULT: c_int = 1;
pub const FT_LCD_FILTER_LIGHT: c_int = 2;
pub const FT_LCD_FILTER_LEGACY1: c_int = 3;
pub const FT_LCD_FILTER_LEGACY: c_int = 16;
pub const FT_LCD_FILTER_MAX: c_int = 17;
pub const enum_FT_LcdFilter_ = c_uint;
pub const FT_LcdFilter = enum_FT_LcdFilter_;
pub extern fn FT_Library_SetLcdFilter(library: FT_Library, filter: FT_LcdFilter) FT_Error;
pub extern fn FT_Library_SetLcdFilterWeights(library: FT_Library, weights: [*c]u8) FT_Error;
pub const FT_LcdFiveTapFilter = [5]FT_Byte;
pub extern fn FT_Library_SetLcdGeometry(library: FT_Library, sub: [*c]FT_Vector) FT_Error;
pub const FT_Module_Interface = FT_Pointer;
pub const FT_Module_Constructor = ?fn (FT_Module) callconv(.C) FT_Error;
pub const FT_Module_Destructor = ?fn (FT_Module) callconv(.C) void;
pub const FT_Module_Requester = ?fn (FT_Module, [*c]const u8) callconv(.C) FT_Module_Interface;
pub const struct_FT_Module_Class_ = extern struct {
    module_flags: FT_ULong,
    module_size: FT_Long,
    module_name: [*c]const FT_String,
    module_version: FT_Fixed,
    module_requires: FT_Fixed,
    module_interface: ?*const anyopaque,
    module_init: FT_Module_Constructor,
    module_done: FT_Module_Destructor,
    get_interface: FT_Module_Requester,
};
pub const FT_Module_Class = struct_FT_Module_Class_;
pub extern fn FT_Add_Module(library: FT_Library, clazz: [*c]const FT_Module_Class) FT_Error;
pub extern fn FT_Get_Module(library: FT_Library, module_name: [*c]const u8) FT_Module;
pub extern fn FT_Remove_Module(library: FT_Library, module: FT_Module) FT_Error;
pub extern fn FT_Property_Set(library: FT_Library, module_name: [*c]const FT_String, property_name: [*c]const FT_String, value: ?*const anyopaque) FT_Error;
pub extern fn FT_Property_Get(library: FT_Library, module_name: [*c]const FT_String, property_name: [*c]const FT_String, value: ?*anyopaque) FT_Error;
pub extern fn FT_Set_Default_Properties(library: FT_Library) void;
pub extern fn FT_Reference_Library(library: FT_Library) FT_Error;
pub extern fn FT_New_Library(memory: FT_Memory, alibrary: [*c]FT_Library) FT_Error;
pub extern fn FT_Done_Library(library: FT_Library) FT_Error;
pub const FT_DebugHook_Func = ?fn (?*anyopaque) callconv(.C) FT_Error;
pub extern fn FT_Set_Debug_Hook(library: FT_Library, hook_index: FT_UInt, debug_hook: FT_DebugHook_Func) void;
pub extern fn FT_Add_Default_Modules(library: FT_Library) void;
pub const FT_TRUETYPE_ENGINE_TYPE_NONE: c_int = 0;
pub const FT_TRUETYPE_ENGINE_TYPE_UNPATENTED: c_int = 1;
pub const FT_TRUETYPE_ENGINE_TYPE_PATENTED: c_int = 2;
pub const enum_FT_TrueTypeEngineType_ = c_uint;
pub const FT_TrueTypeEngineType = enum_FT_TrueTypeEngineType_;
pub extern fn FT_Get_TrueType_Engine_Type(library: FT_Library) FT_TrueTypeEngineType;
pub extern fn FT_Outline_Decompose(outline: [*c]FT_Outline, func_interface: [*c]const FT_Outline_Funcs, user: ?*anyopaque) FT_Error;
pub extern fn FT_Outline_New(library: FT_Library, numPoints: FT_UInt, numContours: FT_Int, anoutline: [*c]FT_Outline) FT_Error;
pub extern fn FT_Outline_Done(library: FT_Library, outline: [*c]FT_Outline) FT_Error;
pub extern fn FT_Outline_Check(outline: [*c]FT_Outline) FT_Error;
pub extern fn FT_Outline_Get_CBox(outline: [*c]const FT_Outline, acbox: [*c]FT_BBox) void;
pub extern fn FT_Outline_Translate(outline: [*c]const FT_Outline, xOffset: FT_Pos, yOffset: FT_Pos) void;
pub extern fn FT_Outline_Copy(source: [*c]const FT_Outline, target: [*c]FT_Outline) FT_Error;
pub extern fn FT_Outline_Transform(outline: [*c]const FT_Outline, matrix: [*c]const FT_Matrix) void;
pub extern fn FT_Outline_Embolden(outline: [*c]FT_Outline, strength: FT_Pos) FT_Error;
pub extern fn FT_Outline_EmboldenXY(outline: [*c]FT_Outline, xstrength: FT_Pos, ystrength: FT_Pos) FT_Error;
pub extern fn FT_Outline_Reverse(outline: [*c]FT_Outline) void;
pub extern fn FT_Outline_Get_Bitmap(library: FT_Library, outline: [*c]FT_Outline, abitmap: [*c]const FT_Bitmap) FT_Error;
pub extern fn FT_Outline_Render(library: FT_Library, outline: [*c]FT_Outline, params: [*c]FT_Raster_Params) FT_Error;
pub const FT_ORIENTATION_TRUETYPE: c_int = 0;
pub const FT_ORIENTATION_POSTSCRIPT: c_int = 1;
pub const FT_ORIENTATION_FILL_RIGHT: c_int = 0;
pub const FT_ORIENTATION_FILL_LEFT: c_int = 1;
pub const FT_ORIENTATION_NONE: c_int = 2;
pub const enum_FT_Orientation_ = c_uint;
pub const FT_Orientation = enum_FT_Orientation_;
pub extern fn FT_Outline_Get_Orientation(outline: [*c]FT_Outline) FT_Orientation;
pub const struct_FT_Glyph_Class_ = opaque {};
pub const FT_Glyph_Class = struct_FT_Glyph_Class_;
pub const struct_FT_GlyphRec_ = extern struct {
    library: FT_Library,
    clazz: ?*const FT_Glyph_Class,
    format: FT_Glyph_Format,
    advance: FT_Vector,
};
pub const FT_Glyph = [*c]struct_FT_GlyphRec_;
pub const FT_GlyphRec = struct_FT_GlyphRec_;
pub const struct_FT_BitmapGlyphRec_ = extern struct {
    root: FT_GlyphRec,
    left: FT_Int,
    top: FT_Int,
    bitmap: FT_Bitmap,
};
pub const FT_BitmapGlyph = [*c]struct_FT_BitmapGlyphRec_;
pub const FT_BitmapGlyphRec = struct_FT_BitmapGlyphRec_;
pub const struct_FT_OutlineGlyphRec_ = extern struct {
    root: FT_GlyphRec,
    outline: FT_Outline,
};
pub const FT_OutlineGlyph = [*c]struct_FT_OutlineGlyphRec_;
pub const FT_OutlineGlyphRec = struct_FT_OutlineGlyphRec_;
pub const struct_FT_SvgGlyphRec_ = extern struct {
    root: FT_GlyphRec,
    svg_document: [*c]FT_Byte,
    svg_document_length: FT_ULong,
    glyph_index: FT_UInt,
    metrics: FT_Size_Metrics,
    units_per_EM: FT_UShort,
    start_glyph_id: FT_UShort,
    end_glyph_id: FT_UShort,
    transform: FT_Matrix,
    delta: FT_Vector,
};
pub const FT_SvgGlyph = [*c]struct_FT_SvgGlyphRec_;
pub const FT_SvgGlyphRec = struct_FT_SvgGlyphRec_;
pub extern fn FT_New_Glyph(library: FT_Library, format: FT_Glyph_Format, aglyph: [*c]FT_Glyph) FT_Error;
pub extern fn FT_Get_Glyph(slot: FT_GlyphSlot, aglyph: [*c]FT_Glyph) FT_Error;
pub extern fn FT_Glyph_Copy(source: FT_Glyph, target: [*c]FT_Glyph) FT_Error;
pub extern fn FT_Glyph_Transform(glyph: FT_Glyph, matrix: [*c]const FT_Matrix, delta: [*c]const FT_Vector) FT_Error;
pub const FT_GLYPH_BBOX_UNSCALED: c_int = 0;
pub const FT_GLYPH_BBOX_SUBPIXELS: c_int = 0;
pub const FT_GLYPH_BBOX_GRIDFIT: c_int = 1;
pub const FT_GLYPH_BBOX_TRUNCATE: c_int = 2;
pub const FT_GLYPH_BBOX_PIXELS: c_int = 3;
pub const enum_FT_Glyph_BBox_Mode_ = c_uint;
pub const FT_Glyph_BBox_Mode = enum_FT_Glyph_BBox_Mode_;
pub extern fn FT_Glyph_Get_CBox(glyph: FT_Glyph, bbox_mode: FT_UInt, acbox: [*c]FT_BBox) void;
pub extern fn FT_Glyph_To_Bitmap(the_glyph: [*c]FT_Glyph, render_mode: FT_Render_Mode, origin: [*c]const FT_Vector, destroy: FT_Bool) FT_Error;
pub extern fn FT_Done_Glyph(glyph: FT_Glyph) void;
pub extern fn FT_Matrix_Multiply(a: [*c]const FT_Matrix, b: [*c]FT_Matrix) void;
pub extern fn FT_Matrix_Invert(matrix: [*c]FT_Matrix) FT_Error;
pub const struct_FT_StrokerRec_ = opaque {};
pub const FT_Stroker = ?*struct_FT_StrokerRec_;
pub const FT_STROKER_LINEJOIN_ROUND: c_int = 0;
pub const FT_STROKER_LINEJOIN_BEVEL: c_int = 1;
pub const FT_STROKER_LINEJOIN_MITER_VARIABLE: c_int = 2;
pub const FT_STROKER_LINEJOIN_MITER: c_int = 2;
pub const FT_STROKER_LINEJOIN_MITER_FIXED: c_int = 3;
pub const enum_FT_Stroker_LineJoin_ = c_uint;
pub const FT_Stroker_LineJoin = enum_FT_Stroker_LineJoin_;
pub const FT_STROKER_LINECAP_BUTT: c_int = 0;
pub const FT_STROKER_LINECAP_ROUND: c_int = 1;
pub const FT_STROKER_LINECAP_SQUARE: c_int = 2;
pub const enum_FT_Stroker_LineCap_ = c_uint;
pub const FT_Stroker_LineCap = enum_FT_Stroker_LineCap_;
pub const FT_STROKER_BORDER_LEFT: c_int = 0;
pub const FT_STROKER_BORDER_RIGHT: c_int = 1;
pub const enum_FT_StrokerBorder_ = c_uint;
pub const FT_StrokerBorder = enum_FT_StrokerBorder_;
pub extern fn FT_Outline_GetInsideBorder(outline: [*c]FT_Outline) FT_StrokerBorder;
pub extern fn FT_Outline_GetOutsideBorder(outline: [*c]FT_Outline) FT_StrokerBorder;
pub extern fn FT_Stroker_New(library: FT_Library, astroker: [*c]FT_Stroker) FT_Error;
pub extern fn FT_Stroker_Set(stroker: FT_Stroker, radius: FT_Fixed, line_cap: FT_Stroker_LineCap, line_join: FT_Stroker_LineJoin, miter_limit: FT_Fixed) void;
pub extern fn FT_Stroker_Rewind(stroker: FT_Stroker) void;
pub extern fn FT_Stroker_ParseOutline(stroker: FT_Stroker, outline: [*c]FT_Outline, opened: FT_Bool) FT_Error;
pub extern fn FT_Stroker_BeginSubPath(stroker: FT_Stroker, to: [*c]FT_Vector, open: FT_Bool) FT_Error;
pub extern fn FT_Stroker_EndSubPath(stroker: FT_Stroker) FT_Error;
pub extern fn FT_Stroker_LineTo(stroker: FT_Stroker, to: [*c]FT_Vector) FT_Error;
pub extern fn FT_Stroker_ConicTo(stroker: FT_Stroker, control: [*c]FT_Vector, to: [*c]FT_Vector) FT_Error;
pub extern fn FT_Stroker_CubicTo(stroker: FT_Stroker, control1: [*c]FT_Vector, control2: [*c]FT_Vector, to: [*c]FT_Vector) FT_Error;
pub extern fn FT_Stroker_GetBorderCounts(stroker: FT_Stroker, border: FT_StrokerBorder, anum_points: [*c]FT_UInt, anum_contours: [*c]FT_UInt) FT_Error;
pub extern fn FT_Stroker_ExportBorder(stroker: FT_Stroker, border: FT_StrokerBorder, outline: [*c]FT_Outline) void;
pub extern fn FT_Stroker_GetCounts(stroker: FT_Stroker, anum_points: [*c]FT_UInt, anum_contours: [*c]FT_UInt) FT_Error;
pub extern fn FT_Stroker_Export(stroker: FT_Stroker, outline: [*c]FT_Outline) void;
pub extern fn FT_Stroker_Done(stroker: FT_Stroker) void;
pub extern fn FT_Glyph_Stroke(pglyph: [*c]FT_Glyph, stroker: FT_Stroker, destroy: FT_Bool) FT_Error;
pub extern fn FT_Glyph_StrokeBorder(pglyph: [*c]FT_Glyph, stroker: FT_Stroker, inside: FT_Bool, destroy: FT_Bool) FT_Error;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):67:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):73:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):164:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):186:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):194:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):315:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):316:9
pub const FT_CONFIG_CONFIG_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:117:9
pub const FT_CONFIG_STANDARD_LIBRARY_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:132:9
pub const FT_CONFIG_OPTIONS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:147:9
pub const FT_CONFIG_MODULES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:163:9
pub const FT_FREETYPE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:180:9
pub const FT_ERRORS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:195:9
pub const FT_MODULE_ERRORS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:208:9
pub const FT_SYSTEM_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:224:9
pub const FT_IMAGE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:240:9
pub const FT_TYPES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:255:9
pub const FT_LIST_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:270:9
pub const FT_OUTLINE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:283:9
pub const FT_SIZES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:296:9
pub const FT_MODULE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:309:9
pub const FT_RENDER_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:322:9
pub const FT_DRIVER_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:335:9
pub const FT_TYPE1_TABLES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:408:9
pub const FT_TRUETYPE_IDS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:423:9
pub const FT_TRUETYPE_TABLES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:436:9
pub const FT_TRUETYPE_TAGS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:450:9
pub const FT_BDF_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:463:9
pub const FT_CID_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:476:9
pub const FT_GZIP_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:489:9
pub const FT_LZW_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:502:9
pub const FT_BZIP2_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:515:9
pub const FT_WINFONTS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:528:9
pub const FT_GLYPH_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:541:9
pub const FT_BITMAP_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:554:9
pub const FT_BBOX_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:567:9
pub const FT_CACHE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:580:9
pub const FT_MAC_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:597:9
pub const FT_MULTIPLE_MASTERS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:610:9
pub const FT_SFNT_NAMES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:624:9
pub const FT_OPENTYPE_VALIDATE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:638:9
pub const FT_GX_VALIDATE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:652:9
pub const FT_PFR_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:665:9
pub const FT_STROKER_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:677:9
pub const FT_SYNTHESIS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:689:9
pub const FT_FONT_FORMATS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:701:9
pub const FT_TRIGONOMETRY_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:717:9
pub const FT_LCD_FILTER_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:729:9
pub const FT_INCREMENTAL_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:741:9
pub const FT_GASP_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:753:9
pub const FT_ADVANCES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:765:9
pub const FT_COLOR_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:777:9
pub const FT_OTSVG_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:789:9
pub const FT_ERROR_DEFINITIONS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:795:9
pub const FT_PARAMETER_TAGS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:796:9
pub const FT_UNPATENTED_HINTING_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:799:9
pub const FT_TRUETYPE_UNPATENTED_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftheader.h:800:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /home/ali/clone/zig/lib/include/stddef.h:104:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/features.h:186:9
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:44:10
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:54:10
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:78:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:79:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:80:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:81:11
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:123:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:124:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:158:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:159:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:167:10
pub const __REDIRECT = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:198:10
pub const __REDIRECT_NTH = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:205:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:207:11
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:211:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:232:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:243:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:250:10
pub const __attribute_const__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:257:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:263:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:272:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:273:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:281:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:291:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:304:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:314:10
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:324:11
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:337:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:346:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:364:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:373:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:391:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:392:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:435:10
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:484:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:560:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:561:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:575:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:576:10
pub const __attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:612:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:613:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:623:10
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/sys/cdefs.h:630:10
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /home/ali/clone/zig/lib/include/stdarg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /home/ali/clone/zig/lib/include/stdarg.h:18:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /home/ali/clone/zig/lib/include/stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/ali/clone/zig/lib/include/stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/ali/clone/zig/lib/include/stdarg.h:27:9
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/types.h:137:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /home/ali/clone/zig/lib/libc/include/x86_64-linux-gnu/bits/typesizes.h:73:9
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/types/struct_FILE.h:106:9
pub const __f32 = @compileError("unable to translate macro: undefined identifier `f`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:91:12
pub const __f64x = @compileError("unable to translate macro: undefined identifier `l`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:120:13
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:178:13
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/floatn-common.h:292:13
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/select.h:34:9
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /home/ali/clone/zig/lib/libc/include/x86_64-linux-gnu/bits/struct_mutex.h:56:10
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'"); // /home/ali/clone/zig/lib/libc/include/x86_64-linux-gnu/bits/struct_rwlock.h:40:11
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /home/ali/clone/zig/lib/libc/include/generic-glibc/bits/thread-shared-types.h:127:9
pub const ft_setjmp = @compileError("unable to translate C expr: unexpected token ')'"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/ftstdlib.h:173:9
pub const FT_PUBLIC_FUNCTION_ATTRIBUTE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/public-macros.h:76:9
pub const FT_EXPORT = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/public-macros.h:104:9
pub const FT_UNUSED = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/config/public-macros.h:115:9
pub const FT_IMAGE_TAG = @compileError("unable to translate C expr: unexpected token '='"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/ftimage.h:699:9
pub const FT_ERR_XCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/fttypes.h:593:9
pub const FT_MODERRDEF = @compileError("unable to translate macro: undefined identifier `FT_Mod_Err_`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/ftmoderr.h:123:9
pub const FT_MODERR_START_LIST = @compileError("unable to translate C expr: expected 'Identifier' instead got '{'"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/ftmoderr.h:126:9
pub const FT_MODERR_END_LIST = @compileError("unable to translate C expr: unexpected token '}'"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/ftmoderr.h:127:9
pub const FT_ERR_PREFIX = @compileError("unable to translate macro: undefined identifier `FT_Err_`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/fterrors.h:146:9
pub const FT_ERRORDEF = @compileError("unable to translate C expr: unexpected token '='"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/fterrors.h:173:9
pub const FT_ERROR_START_LIST = @compileError("unable to translate C expr: expected 'Identifier' instead got '{'"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/fterrors.h:174:9
pub const FT_ERROR_END_LIST = @compileError("unable to translate macro: undefined identifier `Max`"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/fterrors.h:175:9
pub const FT_ENC_TAG = @compileError("unable to translate C expr: unexpected token '='"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/freetype.h:629:9
pub const FT_FACE_DRIVER_NAME = @compileError("unable to translate C expr: unexpected token ','"); // /home/ali/clone/zig-freetype/upstream/freetype/include/freetype/ftmodapi.h:350:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 13);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_TYPE__ = c_uint;
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 19);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const FREETYPE_H_ = "";
pub const FT2BUILD_H_ = "";
pub const FTHEADER_H_ = "";
pub const FT_BEGIN_HEADER = "";
pub const FT_END_HEADER = "";
pub const FT_AUTOHINTER_H = FT_DRIVER_H;
pub const FT_CFF_DRIVER_H = FT_DRIVER_H;
pub const FT_TRUETYPE_DRIVER_H = FT_DRIVER_H;
pub const FT_PCF_DRIVER_H = FT_DRIVER_H;
pub const FT_XFREE86_H = FT_FONT_FORMATS_H;
pub const FT_CACHE_IMAGE_H = FT_CACHE_H;
pub const FT_CACHE_SMALL_BITMAPS_H = FT_CACHE_H;
pub const FT_CACHE_CHARMAP_H = FT_CACHE_H;
pub const FT_CACHE_MANAGER_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_MRU_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_MANAGER_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_CACHE_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_GLYPH_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_IMAGE_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_SBITS_H = FT_CACHE_H;
pub const FTCONFIG_H_ = "";
pub const FTOPTION_H_ = "";
pub const FT_CONFIG_OPTION_ENVIRONMENT_PROPERTIES = "";
pub const FT_CONFIG_OPTION_INLINE_MULFIX = "";
pub const FT_CONFIG_OPTION_USE_LZW = "";
pub const FT_CONFIG_OPTION_USE_ZLIB = "";
pub const FT_CONFIG_OPTION_POSTSCRIPT_NAMES = "";
pub const FT_CONFIG_OPTION_ADOBE_GLYPH_LIST = "";
pub const FT_CONFIG_OPTION_MAC_FONTS = "";
pub const FT_CONFIG_OPTION_GUESSING_EMBEDDED_RFORK = "";
pub const FT_CONFIG_OPTION_INCREMENTAL = "";
pub const FT_RENDER_POOL_SIZE = @as(c_long, 16384);
pub const FT_MAX_MODULES = @as(c_int, 32);
pub const FT_CONFIG_OPTION_SVG = "";
pub const TT_CONFIG_OPTION_EMBEDDED_BITMAPS = "";
pub const TT_CONFIG_OPTION_COLOR_LAYERS = "";
pub const TT_CONFIG_OPTION_POSTSCRIPT_NAMES = "";
pub const TT_CONFIG_OPTION_SFNT_NAMES = "";
pub const TT_CONFIG_CMAP_FORMAT_0 = "";
pub const TT_CONFIG_CMAP_FORMAT_2 = "";
pub const TT_CONFIG_CMAP_FORMAT_4 = "";
pub const TT_CONFIG_CMAP_FORMAT_6 = "";
pub const TT_CONFIG_CMAP_FORMAT_8 = "";
pub const TT_CONFIG_CMAP_FORMAT_10 = "";
pub const TT_CONFIG_CMAP_FORMAT_12 = "";
pub const TT_CONFIG_CMAP_FORMAT_13 = "";
pub const TT_CONFIG_CMAP_FORMAT_14 = "";
pub const TT_CONFIG_OPTION_BYTECODE_INTERPRETER = "";
pub const TT_CONFIG_OPTION_SUBPIXEL_HINTING = @as(c_int, 2);
pub const TT_CONFIG_OPTION_GX_VAR_SUPPORT = "";
pub const TT_CONFIG_OPTION_BDF = "";
pub const TT_CONFIG_OPTION_MAX_RUNNABLE_OPCODES = @as(c_long, 1000000);
pub const T1_MAX_DICT_DEPTH = @as(c_int, 5);
pub const T1_MAX_SUBRS_CALLS = @as(c_int, 16);
pub const T1_MAX_CHARSTRINGS_OPERANDS = @as(c_int, 256);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X1 = @as(c_int, 500);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y1 = @as(c_int, 400);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X2 = @as(c_int, 1000);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y2 = @as(c_int, 275);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X3 = @as(c_int, 1667);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y3 = @as(c_int, 275);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X4 = @as(c_int, 2333);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y4 = @as(c_int, 0);
pub const AF_CONFIG_OPTION_CJK = "";
pub const AF_CONFIG_OPTION_INDIC = "";
pub const TT_USE_BYTECODE_INTERPRETER = "";
pub const TT_SUPPORT_SUBPIXEL_HINTING_MINIMAL = "";
pub const TT_SUPPORT_COLRV1 = "";
pub const HAVE_UNISTD_H = @as(c_int, 1);
pub const HAVE_FCNTL_H = @as(c_int, 1);
pub const FT_CONFIG_OPTION_SUBPIXEL_RENDERING = @as(c_int, 1);
pub const FTSTDLIB_H_ = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const ft_ptrdiff_t = ptrdiff_t;
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    return __has_builtin(name);
}
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    return __bos(__o);
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub const __wur = "";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __attr_dealloc_free = "";
pub const __USE_EXTERN_INLINES = @as(c_int, 1);
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const LLONG_MIN = -LLONG_MAX - @as(c_int, 1);
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (LLONG_MAX * @as(c_ulonglong, 2)) + @as(c_int, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const FT_CHAR_BIT = CHAR_BIT;
pub const FT_USHORT_MAX = USHRT_MAX;
pub const FT_INT_MAX = INT_MAX;
pub const FT_INT_MIN = INT_MIN;
pub const FT_UINT_MAX = UINT_MAX;
pub const FT_LONG_MIN = LONG_MIN;
pub const FT_LONG_MAX = LONG_MAX;
pub const FT_ULONG_MAX = ULONG_MAX;
pub const FT_LLONG_MAX = LLONG_MAX;
pub const FT_LLONG_MIN = LLONG_MIN;
pub const FT_ULLONG_MAX = ULLONG_MAX;
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const ft_memchr = memchr;
pub const ft_memcmp = memcmp;
pub const ft_memcpy = memcpy;
pub const ft_memmove = memmove;
pub const ft_memset = memset;
pub const ft_strcat = strcat;
pub const ft_strcmp = strcmp;
pub const ft_strcpy = strcpy;
pub const ft_strlen = strlen;
pub const ft_strncmp = strncmp;
pub const ft_strncpy = strncpy;
pub const ft_strrchr = strrchr;
pub const ft_strstr = strstr;
pub const _STDIO_H = @as(c_int, 1);
pub const __need___va_list = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    return __builtin_nanf(x);
}
pub const _BITS_STDIO_H = @as(c_int, 1);
pub const __STDIO_INLINE = __extern_inline;
pub const FT_FILE = FILE;
pub const ft_fclose = fclose;
pub const ft_fopen = fopen;
pub const ft_fread = fread;
pub const ft_fseek = fseek;
pub const ft_ftell = ftell;
pub const ft_sprintf = sprintf;
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hexadecimal);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    return blk: {
        _ = LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[__FD_ELT(d)] & __FD_MASK(d)) != @as(c_int, 0)) {
    return (__FDS_BITS(s)[__FD_ELT(d)] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @as(c_int, 1024) / (@as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(d / __NFDBITS) {
    return d / __NFDBITS;
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << (d % __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = __PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const ft_qsort = qsort;
pub const ft_scalloc = calloc;
pub const ft_sfree = free;
pub const ft_smalloc = malloc;
pub const ft_srealloc = realloc;
pub const ft_strtol = strtol;
pub const ft_getenv = getenv;
pub const _SETJMP_H = @as(c_int, 1);
pub const _BITS_SETJMP_H = @as(c_int, 1);
pub const __jmp_buf_tag_defined = @as(c_int, 1);
pub inline fn sigsetjmp(env: anytype, savemask: anytype) @TypeOf(__sigsetjmp(env, savemask)) {
    return __sigsetjmp(env, savemask);
}
pub const ft_jmp_buf = jmp_buf;
pub const ft_longjmp = longjmp;
pub const FREETYPE_CONFIG_INTEGER_TYPES_H_ = "";
pub const FT_SIZEOF_INT = @as(c_int, 32) / FT_CHAR_BIT;
pub const FT_SIZEOF_LONG = @as(c_int, 64) / FT_CHAR_BIT;
pub const FT_SIZEOF_LONG_LONG = @as(c_int, 64) / FT_CHAR_BIT;
pub const FT_INT64 = c_long;
pub const FT_UINT64 = c_ulong;
pub const FREETYPE_CONFIG_PUBLIC_MACROS_H_ = "";
pub const FT_STATIC_CAST = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub const FT_REINTERPRET_CAST = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn FT_STATIC_BYTE_CAST(@"type": anytype, @"var": anytype) @TypeOf(@"type"(u8)(@"var")) {
    return @"type"(u8)(@"var");
}
pub const FREETYPE_CONFIG_MAC_SUPPORT_H_ = "";
pub const FTTYPES_H_ = "";
pub const FTSYSTEM_H_ = "";
pub const FTIMAGE_H_ = "";
pub const ft_pixel_mode_none = FT_PIXEL_MODE_NONE;
pub const ft_pixel_mode_mono = FT_PIXEL_MODE_MONO;
pub const ft_pixel_mode_grays = FT_PIXEL_MODE_GRAY;
pub const ft_pixel_mode_pal2 = FT_PIXEL_MODE_GRAY2;
pub const ft_pixel_mode_pal4 = FT_PIXEL_MODE_GRAY4;
pub const FT_OUTLINE_CONTOURS_MAX = SHRT_MAX;
pub const FT_OUTLINE_POINTS_MAX = SHRT_MAX;
pub const FT_OUTLINE_NONE = @as(c_int, 0x0);
pub const FT_OUTLINE_OWNER = @as(c_int, 0x1);
pub const FT_OUTLINE_EVEN_ODD_FILL = @as(c_int, 0x2);
pub const FT_OUTLINE_REVERSE_FILL = @as(c_int, 0x4);
pub const FT_OUTLINE_IGNORE_DROPOUTS = @as(c_int, 0x8);
pub const FT_OUTLINE_SMART_DROPOUTS = @as(c_int, 0x10);
pub const FT_OUTLINE_INCLUDE_STUBS = @as(c_int, 0x20);
pub const FT_OUTLINE_OVERLAP = @as(c_int, 0x40);
pub const FT_OUTLINE_HIGH_PRECISION = @as(c_int, 0x100);
pub const FT_OUTLINE_SINGLE_PASS = @as(c_int, 0x200);
pub const ft_outline_none = FT_OUTLINE_NONE;
pub const ft_outline_owner = FT_OUTLINE_OWNER;
pub const ft_outline_even_odd_fill = FT_OUTLINE_EVEN_ODD_FILL;
pub const ft_outline_reverse_fill = FT_OUTLINE_REVERSE_FILL;
pub const ft_outline_ignore_dropouts = FT_OUTLINE_IGNORE_DROPOUTS;
pub const ft_outline_high_precision = FT_OUTLINE_HIGH_PRECISION;
pub const ft_outline_single_pass = FT_OUTLINE_SINGLE_PASS;
pub inline fn FT_CURVE_TAG(flag: anytype) @TypeOf(flag & @as(c_int, 0x03)) {
    return flag & @as(c_int, 0x03);
}
pub const FT_CURVE_TAG_ON = @as(c_int, 0x01);
pub const FT_CURVE_TAG_CONIC = @as(c_int, 0x00);
pub const FT_CURVE_TAG_CUBIC = @as(c_int, 0x02);
pub const FT_CURVE_TAG_HAS_SCANMODE = @as(c_int, 0x04);
pub const FT_CURVE_TAG_TOUCH_X = @as(c_int, 0x08);
pub const FT_CURVE_TAG_TOUCH_Y = @as(c_int, 0x10);
pub const FT_CURVE_TAG_TOUCH_BOTH = FT_CURVE_TAG_TOUCH_X | FT_CURVE_TAG_TOUCH_Y;
pub const FT_Curve_Tag_On = FT_CURVE_TAG_ON;
pub const FT_Curve_Tag_Conic = FT_CURVE_TAG_CONIC;
pub const FT_Curve_Tag_Cubic = FT_CURVE_TAG_CUBIC;
pub const FT_Curve_Tag_Touch_X = FT_CURVE_TAG_TOUCH_X;
pub const FT_Curve_Tag_Touch_Y = FT_CURVE_TAG_TOUCH_Y;
pub const FT_Outline_MoveTo_Func = FT_Outline_MoveToFunc;
pub const FT_Outline_LineTo_Func = FT_Outline_LineToFunc;
pub const FT_Outline_ConicTo_Func = FT_Outline_ConicToFunc;
pub const FT_Outline_CubicTo_Func = FT_Outline_CubicToFunc;
pub const ft_glyph_format_none = FT_GLYPH_FORMAT_NONE;
pub const ft_glyph_format_composite = FT_GLYPH_FORMAT_COMPOSITE;
pub const ft_glyph_format_bitmap = FT_GLYPH_FORMAT_BITMAP;
pub const ft_glyph_format_outline = FT_GLYPH_FORMAT_OUTLINE;
pub const ft_glyph_format_plotter = FT_GLYPH_FORMAT_PLOTTER;
pub const FT_Raster_Span_Func = FT_SpanFunc;
pub const FT_RASTER_FLAG_DEFAULT = @as(c_int, 0x0);
pub const FT_RASTER_FLAG_AA = @as(c_int, 0x1);
pub const FT_RASTER_FLAG_DIRECT = @as(c_int, 0x2);
pub const FT_RASTER_FLAG_CLIP = @as(c_int, 0x4);
pub const FT_RASTER_FLAG_SDF = @as(c_int, 0x8);
pub const ft_raster_flag_default = FT_RASTER_FLAG_DEFAULT;
pub const ft_raster_flag_aa = FT_RASTER_FLAG_AA;
pub const ft_raster_flag_direct = FT_RASTER_FLAG_DIRECT;
pub const ft_raster_flag_clip = FT_RASTER_FLAG_CLIP;
pub const FT_Raster_New_Func = FT_Raster_NewFunc;
pub const FT_Raster_Done_Func = FT_Raster_DoneFunc;
pub const FT_Raster_Reset_Func = FT_Raster_ResetFunc;
pub const FT_Raster_Set_Mode_Func = FT_Raster_SetModeFunc;
pub const FT_Raster_Render_Func = FT_Raster_RenderFunc;
pub inline fn FT_MAKE_TAG(_x1: anytype, _x2: anytype, _x3: anytype, _x4: anytype) @TypeOf((((FT_STATIC_BYTE_CAST(FT_Tag, _x1) << @as(c_int, 24)) | (FT_STATIC_BYTE_CAST(FT_Tag, _x2) << @as(c_int, 16))) | (FT_STATIC_BYTE_CAST(FT_Tag, _x3) << @as(c_int, 8))) | FT_STATIC_BYTE_CAST(FT_Tag, _x4)) {
    return (((FT_STATIC_BYTE_CAST(FT_Tag, _x1) << @as(c_int, 24)) | (FT_STATIC_BYTE_CAST(FT_Tag, _x2) << @as(c_int, 16))) | (FT_STATIC_BYTE_CAST(FT_Tag, _x3) << @as(c_int, 8))) | FT_STATIC_BYTE_CAST(FT_Tag, _x4);
}
pub inline fn FT_IS_EMPTY(list: anytype) @TypeOf(list.head == @as(c_int, 0)) {
    return list.head == @as(c_int, 0);
}
pub inline fn FT_BOOL(x: anytype) @TypeOf(FT_STATIC_CAST(FT_Bool, x != @as(c_int, 0))) {
    return FT_STATIC_CAST(FT_Bool, x != @as(c_int, 0));
}
pub inline fn FT_ERR_CAT(x: anytype, y: anytype) @TypeOf(FT_ERR_XCAT(x, y)) {
    return FT_ERR_XCAT(x, y);
}
pub inline fn FT_ERR(e: anytype) @TypeOf(FT_ERR_CAT(FT_ERR_PREFIX, e)) {
    return FT_ERR_CAT(FT_ERR_PREFIX, e);
}
pub inline fn FT_ERROR_BASE(x: anytype) @TypeOf(x & @as(c_int, 0xFF)) {
    return x & @as(c_int, 0xFF);
}
pub inline fn FT_ERROR_MODULE(x: anytype) @TypeOf(x & @as(c_uint, 0xFF00)) {
    return x & @as(c_uint, 0xFF00);
}
pub inline fn FT_ERR_EQ(x: anytype, e: anytype) @TypeOf(FT_ERROR_BASE(x) == FT_ERROR_BASE(FT_ERR(e))) {
    return FT_ERROR_BASE(x) == FT_ERROR_BASE(FT_ERR(e));
}
pub inline fn FT_ERR_NEQ(x: anytype, e: anytype) @TypeOf(FT_ERROR_BASE(x) != FT_ERROR_BASE(FT_ERR(e))) {
    return FT_ERROR_BASE(x) != FT_ERROR_BASE(FT_ERR(e));
}
pub const FTERRORS_H_ = "";
pub const __FTERRORS_H__ = "";
pub const FTMODERR_H_ = "";
pub const FT_ERR_BASE = @as(c_int, 0);
pub const FT_INCLUDE_ERR_PROTOS = "";
pub inline fn FT_ERRORDEF_(e: anytype, v: anytype, s: anytype) @TypeOf(FT_ERRORDEF(FT_ERR_CAT(FT_ERR_PREFIX, e), v + FT_ERR_BASE, s)) {
    return FT_ERRORDEF(FT_ERR_CAT(FT_ERR_PREFIX, e), v + FT_ERR_BASE, s);
}
pub inline fn FT_NOERRORDEF_(e: anytype, v: anytype, s: anytype) @TypeOf(FT_ERRORDEF(FT_ERR_CAT(FT_ERR_PREFIX, e), v, s)) {
    return FT_ERRORDEF(FT_ERR_CAT(FT_ERR_PREFIX, e), v, s);
}
pub const FT_ERR_PROTOS_DEFINED = "";
pub const ft_encoding_none = FT_ENCODING_NONE;
pub const ft_encoding_unicode = FT_ENCODING_UNICODE;
pub const ft_encoding_symbol = FT_ENCODING_MS_SYMBOL;
pub const ft_encoding_latin_1 = FT_ENCODING_ADOBE_LATIN_1;
pub const ft_encoding_latin_2 = FT_ENCODING_OLD_LATIN_2;
pub const ft_encoding_sjis = FT_ENCODING_SJIS;
pub const ft_encoding_gb2312 = FT_ENCODING_PRC;
pub const ft_encoding_big5 = FT_ENCODING_BIG5;
pub const ft_encoding_wansung = FT_ENCODING_WANSUNG;
pub const ft_encoding_johab = FT_ENCODING_JOHAB;
pub const ft_encoding_adobe_standard = FT_ENCODING_ADOBE_STANDARD;
pub const ft_encoding_adobe_expert = FT_ENCODING_ADOBE_EXPERT;
pub const ft_encoding_adobe_custom = FT_ENCODING_ADOBE_CUSTOM;
pub const ft_encoding_apple_roman = FT_ENCODING_APPLE_ROMAN;
pub const FT_FACE_FLAG_SCALABLE = @as(c_long, 1) << @as(c_int, 0);
pub const FT_FACE_FLAG_FIXED_SIZES = @as(c_long, 1) << @as(c_int, 1);
pub const FT_FACE_FLAG_FIXED_WIDTH = @as(c_long, 1) << @as(c_int, 2);
pub const FT_FACE_FLAG_SFNT = @as(c_long, 1) << @as(c_int, 3);
pub const FT_FACE_FLAG_HORIZONTAL = @as(c_long, 1) << @as(c_int, 4);
pub const FT_FACE_FLAG_VERTICAL = @as(c_long, 1) << @as(c_int, 5);
pub const FT_FACE_FLAG_KERNING = @as(c_long, 1) << @as(c_int, 6);
pub const FT_FACE_FLAG_FAST_GLYPHS = @as(c_long, 1) << @as(c_int, 7);
pub const FT_FACE_FLAG_MULTIPLE_MASTERS = @as(c_long, 1) << @as(c_int, 8);
pub const FT_FACE_FLAG_GLYPH_NAMES = @as(c_long, 1) << @as(c_int, 9);
pub const FT_FACE_FLAG_EXTERNAL_STREAM = @as(c_long, 1) << @as(c_int, 10);
pub const FT_FACE_FLAG_HINTER = @as(c_long, 1) << @as(c_int, 11);
pub const FT_FACE_FLAG_CID_KEYED = @as(c_long, 1) << @as(c_int, 12);
pub const FT_FACE_FLAG_TRICKY = @as(c_long, 1) << @as(c_int, 13);
pub const FT_FACE_FLAG_COLOR = @as(c_long, 1) << @as(c_int, 14);
pub const FT_FACE_FLAG_VARIATION = @as(c_long, 1) << @as(c_int, 15);
pub const FT_FACE_FLAG_SVG = @as(c_long, 1) << @as(c_int, 16);
pub const FT_FACE_FLAG_SBIX = @as(c_long, 1) << @as(c_int, 17);
pub const FT_FACE_FLAG_SBIX_OVERLAY = @as(c_long, 1) << @as(c_int, 18);
pub inline fn FT_HAS_HORIZONTAL(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_HORIZONTAL) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_HORIZONTAL) != 0);
}
pub inline fn FT_HAS_VERTICAL(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_VERTICAL) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_VERTICAL) != 0);
}
pub inline fn FT_HAS_KERNING(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_KERNING) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_KERNING) != 0);
}
pub inline fn FT_IS_SCALABLE(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SCALABLE) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_SCALABLE) != 0);
}
pub inline fn FT_IS_SFNT(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SFNT) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_SFNT) != 0);
}
pub inline fn FT_IS_FIXED_WIDTH(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_FIXED_WIDTH) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_FIXED_WIDTH) != 0);
}
pub inline fn FT_HAS_FIXED_SIZES(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_FIXED_SIZES) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_FIXED_SIZES) != 0);
}
pub inline fn FT_HAS_FAST_GLYPHS(face: anytype) @TypeOf(@as(c_int, 0)) {
    _ = face;
    return @as(c_int, 0);
}
pub inline fn FT_HAS_GLYPH_NAMES(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_GLYPH_NAMES) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_GLYPH_NAMES) != 0);
}
pub inline fn FT_HAS_MULTIPLE_MASTERS(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_MULTIPLE_MASTERS) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_MULTIPLE_MASTERS) != 0);
}
pub inline fn FT_IS_NAMED_INSTANCE(face: anytype) @TypeOf(!!((face.*.face_index & @as(c_long, 0x7FFF0000)) != 0)) {
    return !!((face.*.face_index & @as(c_long, 0x7FFF0000)) != 0);
}
pub inline fn FT_IS_VARIATION(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_VARIATION) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_VARIATION) != 0);
}
pub inline fn FT_IS_CID_KEYED(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_CID_KEYED) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_CID_KEYED) != 0);
}
pub inline fn FT_IS_TRICKY(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_TRICKY) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_TRICKY) != 0);
}
pub inline fn FT_HAS_COLOR(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_COLOR) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_COLOR) != 0);
}
pub inline fn FT_HAS_SVG(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SVG) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_SVG) != 0);
}
pub inline fn FT_HAS_SBIX(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SBIX) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_SBIX) != 0);
}
pub inline fn FT_HAS_SBIX_OVERLAY(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SBIX_OVERLAY) != 0)) {
    return !!((face.*.face_flags & FT_FACE_FLAG_SBIX_OVERLAY) != 0);
}
pub const FT_STYLE_FLAG_ITALIC = @as(c_int, 1) << @as(c_int, 0);
pub const FT_STYLE_FLAG_BOLD = @as(c_int, 1) << @as(c_int, 1);
pub const FT_OPEN_MEMORY = @as(c_int, 0x1);
pub const FT_OPEN_STREAM = @as(c_int, 0x2);
pub const FT_OPEN_PATHNAME = @as(c_int, 0x4);
pub const FT_OPEN_DRIVER = @as(c_int, 0x8);
pub const FT_OPEN_PARAMS = @as(c_int, 0x10);
pub const ft_open_memory = FT_OPEN_MEMORY;
pub const ft_open_stream = FT_OPEN_STREAM;
pub const ft_open_pathname = FT_OPEN_PATHNAME;
pub const ft_open_driver = FT_OPEN_DRIVER;
pub const ft_open_params = FT_OPEN_PARAMS;
pub const FT_LOAD_DEFAULT = @as(c_int, 0x0);
pub const FT_LOAD_NO_SCALE = @as(c_long, 1) << @as(c_int, 0);
pub const FT_LOAD_NO_HINTING = @as(c_long, 1) << @as(c_int, 1);
pub const FT_LOAD_RENDER = @as(c_long, 1) << @as(c_int, 2);
pub const FT_LOAD_NO_BITMAP = @as(c_long, 1) << @as(c_int, 3);
pub const FT_LOAD_VERTICAL_LAYOUT = @as(c_long, 1) << @as(c_int, 4);
pub const FT_LOAD_FORCE_AUTOHINT = @as(c_long, 1) << @as(c_int, 5);
pub const FT_LOAD_CROP_BITMAP = @as(c_long, 1) << @as(c_int, 6);
pub const FT_LOAD_PEDANTIC = @as(c_long, 1) << @as(c_int, 7);
pub const FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH = @as(c_long, 1) << @as(c_int, 9);
pub const FT_LOAD_NO_RECURSE = @as(c_long, 1) << @as(c_int, 10);
pub const FT_LOAD_IGNORE_TRANSFORM = @as(c_long, 1) << @as(c_int, 11);
pub const FT_LOAD_MONOCHROME = @as(c_long, 1) << @as(c_int, 12);
pub const FT_LOAD_LINEAR_DESIGN = @as(c_long, 1) << @as(c_int, 13);
pub const FT_LOAD_SBITS_ONLY = @as(c_long, 1) << @as(c_int, 14);
pub const FT_LOAD_NO_AUTOHINT = @as(c_long, 1) << @as(c_int, 15);
pub const FT_LOAD_COLOR = @as(c_long, 1) << @as(c_int, 20);
pub const FT_LOAD_COMPUTE_METRICS = @as(c_long, 1) << @as(c_int, 21);
pub const FT_LOAD_BITMAP_METRICS_ONLY = @as(c_long, 1) << @as(c_int, 22);
pub const FT_LOAD_ADVANCE_ONLY = @as(c_long, 1) << @as(c_int, 8);
pub const FT_LOAD_SVG_ONLY = @as(c_long, 1) << @as(c_int, 23);
pub inline fn FT_LOAD_TARGET_(x: anytype) @TypeOf(FT_STATIC_CAST(FT_Int32, x & @as(c_int, 15)) << @as(c_int, 16)) {
    return FT_STATIC_CAST(FT_Int32, x & @as(c_int, 15)) << @as(c_int, 16);
}
pub const FT_LOAD_TARGET_NORMAL = FT_LOAD_TARGET_(FT_RENDER_MODE_NORMAL);
pub const FT_LOAD_TARGET_LIGHT = FT_LOAD_TARGET_(FT_RENDER_MODE_LIGHT);
pub const FT_LOAD_TARGET_MONO = FT_LOAD_TARGET_(FT_RENDER_MODE_MONO);
pub const FT_LOAD_TARGET_LCD = FT_LOAD_TARGET_(FT_RENDER_MODE_LCD);
pub const FT_LOAD_TARGET_LCD_V = FT_LOAD_TARGET_(FT_RENDER_MODE_LCD_V);
pub inline fn FT_LOAD_TARGET_MODE(x: anytype) @TypeOf(FT_STATIC_CAST(FT_Render_Mode, (x >> @as(c_int, 16)) & @as(c_int, 15))) {
    return FT_STATIC_CAST(FT_Render_Mode, (x >> @as(c_int, 16)) & @as(c_int, 15));
}
pub const ft_render_mode_normal = FT_RENDER_MODE_NORMAL;
pub const ft_render_mode_mono = FT_RENDER_MODE_MONO;
pub const ft_kerning_default = FT_KERNING_DEFAULT;
pub const ft_kerning_unfitted = FT_KERNING_UNFITTED;
pub const ft_kerning_unscaled = FT_KERNING_UNSCALED;
pub const FT_SUBGLYPH_FLAG_ARGS_ARE_WORDS = @as(c_int, 1);
pub const FT_SUBGLYPH_FLAG_ARGS_ARE_XY_VALUES = @as(c_int, 2);
pub const FT_SUBGLYPH_FLAG_ROUND_XY_TO_GRID = @as(c_int, 4);
pub const FT_SUBGLYPH_FLAG_SCALE = @as(c_int, 8);
pub const FT_SUBGLYPH_FLAG_XY_SCALE = @as(c_int, 0x40);
pub const FT_SUBGLYPH_FLAG_2X2 = @as(c_int, 0x80);
pub const FT_SUBGLYPH_FLAG_USE_MY_METRICS = @as(c_int, 0x200);
pub const FT_FSTYPE_INSTALLABLE_EMBEDDING = @as(c_int, 0x0000);
pub const FT_FSTYPE_RESTRICTED_LICENSE_EMBEDDING = @as(c_int, 0x0002);
pub const FT_FSTYPE_PREVIEW_AND_PRINT_EMBEDDING = @as(c_int, 0x0004);
pub const FT_FSTYPE_EDITABLE_EMBEDDING = @as(c_int, 0x0008);
pub const FT_FSTYPE_NO_SUBSETTING = @as(c_int, 0x0100);
pub const FT_FSTYPE_BITMAP_EMBEDDING_ONLY = @as(c_int, 0x0200);
pub const FREETYPE_MAJOR = @as(c_int, 2);
pub const FREETYPE_MINOR = @as(c_int, 12);
pub const FREETYPE_PATCH = @as(c_int, 1);
pub const FTLCDFIL_H_ = "";
pub const FTPARAMS_H_ = "";
pub const FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_FAMILY = FT_MAKE_TAG('i', 'g', 'p', 'f');
pub const FT_PARAM_TAG_IGNORE_PREFERRED_FAMILY = FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_FAMILY;
pub const FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_SUBFAMILY = FT_MAKE_TAG('i', 'g', 'p', 's');
pub const FT_PARAM_TAG_IGNORE_PREFERRED_SUBFAMILY = FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_SUBFAMILY;
pub const FT_PARAM_TAG_INCREMENTAL = FT_MAKE_TAG('i', 'n', 'c', 'r');
pub const FT_PARAM_TAG_IGNORE_SBIX = FT_MAKE_TAG('i', 's', 'b', 'x');
pub const FT_PARAM_TAG_LCD_FILTER_WEIGHTS = FT_MAKE_TAG('l', 'c', 'd', 'f');
pub const FT_PARAM_TAG_RANDOM_SEED = FT_MAKE_TAG('s', 'e', 'e', 'd');
pub const FT_PARAM_TAG_STEM_DARKENING = FT_MAKE_TAG('d', 'a', 'r', 'k');
pub const FT_PARAM_TAG_UNPATENTED_HINTING = FT_MAKE_TAG('u', 'n', 'p', 'a');
pub const FT_LCD_FILTER_FIVE_TAPS = @as(c_int, 5);
pub const FTMODAPI_H_ = "";
pub const FT_MODULE_FONT_DRIVER = @as(c_int, 1);
pub const FT_MODULE_RENDERER = @as(c_int, 2);
pub const FT_MODULE_HINTER = @as(c_int, 4);
pub const FT_MODULE_STYLER = @as(c_int, 8);
pub const FT_MODULE_DRIVER_SCALABLE = @as(c_int, 0x100);
pub const FT_MODULE_DRIVER_NO_OUTLINES = @as(c_int, 0x200);
pub const FT_MODULE_DRIVER_HAS_HINTER = @as(c_int, 0x400);
pub const FT_MODULE_DRIVER_HINTS_LIGHTLY = @as(c_int, 0x800);
pub const ft_module_font_driver = FT_MODULE_FONT_DRIVER;
pub const ft_module_renderer = FT_MODULE_RENDERER;
pub const ft_module_hinter = FT_MODULE_HINTER;
pub const ft_module_styler = FT_MODULE_STYLER;
pub const ft_module_driver_scalable = FT_MODULE_DRIVER_SCALABLE;
pub const ft_module_driver_no_outlines = FT_MODULE_DRIVER_NO_OUTLINES;
pub const ft_module_driver_has_hinter = FT_MODULE_DRIVER_HAS_HINTER;
pub const ft_module_driver_hints_lightly = FT_MODULE_DRIVER_HINTS_LIGHTLY;
pub const FT_DEBUG_HOOK_TRUETYPE = @as(c_int, 0);
pub const FTSTROKE_H_ = "";
pub const FTOUTLN_H_ = "";
pub const FTGLYPH_H_ = "";
pub const ft_glyph_bbox_unscaled = FT_GLYPH_BBOX_UNSCALED;
pub const ft_glyph_bbox_subpixels = FT_GLYPH_BBOX_SUBPIXELS;
pub const ft_glyph_bbox_gridfit = FT_GLYPH_BBOX_GRIDFIT;
pub const ft_glyph_bbox_truncate = FT_GLYPH_BBOX_TRUNCATE;
pub const ft_glyph_bbox_pixels = FT_GLYPH_BBOX_PIXELS;
pub const __locale_data = struct___locale_data;
pub const __locale_struct = struct___locale_struct;
pub const __va_list_tag = struct___va_list_tag;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const __jmp_buf_tag = struct___jmp_buf_tag;
pub const FT_MemoryRec_ = struct_FT_MemoryRec_;
pub const FT_StreamDesc_ = union_FT_StreamDesc_;
pub const FT_StreamRec_ = struct_FT_StreamRec_;
pub const FT_Vector_ = struct_FT_Vector_;
pub const FT_BBox_ = struct_FT_BBox_;
pub const FT_Pixel_Mode_ = enum_FT_Pixel_Mode_;
pub const FT_Bitmap_ = struct_FT_Bitmap_;
pub const FT_Outline_ = struct_FT_Outline_;
pub const FT_Outline_Funcs_ = struct_FT_Outline_Funcs_;
pub const FT_Glyph_Format_ = enum_FT_Glyph_Format_;
pub const FT_Span_ = struct_FT_Span_;
pub const FT_Raster_Params_ = struct_FT_Raster_Params_;
pub const FT_RasterRec_ = struct_FT_RasterRec_;
pub const FT_Raster_Funcs_ = struct_FT_Raster_Funcs_;
pub const FT_UnitVector_ = struct_FT_UnitVector_;
pub const FT_Matrix_ = struct_FT_Matrix_;
pub const FT_Data_ = struct_FT_Data_;
pub const FT_Generic_ = struct_FT_Generic_;
pub const FT_ListNodeRec_ = struct_FT_ListNodeRec_;
pub const FT_ListRec_ = struct_FT_ListRec_;
pub const FT_Glyph_Metrics_ = struct_FT_Glyph_Metrics_;
pub const FT_Bitmap_Size_ = struct_FT_Bitmap_Size_;
pub const FT_LibraryRec_ = struct_FT_LibraryRec_;
pub const FT_ModuleRec_ = struct_FT_ModuleRec_;
pub const FT_DriverRec_ = struct_FT_DriverRec_;
pub const FT_RendererRec_ = struct_FT_RendererRec_;
pub const FT_Encoding_ = enum_FT_Encoding_;
pub const FT_CharMapRec_ = struct_FT_CharMapRec_;
pub const FT_SubGlyphRec_ = struct_FT_SubGlyphRec_;
pub const FT_Slot_InternalRec_ = struct_FT_Slot_InternalRec_;
pub const FT_GlyphSlotRec_ = struct_FT_GlyphSlotRec_;
pub const FT_Size_Metrics_ = struct_FT_Size_Metrics_;
pub const FT_Size_InternalRec_ = struct_FT_Size_InternalRec_;
pub const FT_SizeRec_ = struct_FT_SizeRec_;
pub const FT_Face_InternalRec_ = struct_FT_Face_InternalRec_;
pub const FT_FaceRec_ = struct_FT_FaceRec_;
pub const FT_Parameter_ = struct_FT_Parameter_;
pub const FT_Open_Args_ = struct_FT_Open_Args_;
pub const FT_Size_Request_Type_ = enum_FT_Size_Request_Type_;
pub const FT_Size_RequestRec_ = struct_FT_Size_RequestRec_;
pub const FT_Render_Mode_ = enum_FT_Render_Mode_;
pub const FT_Kerning_Mode_ = enum_FT_Kerning_Mode_;
pub const FT_LcdFilter_ = enum_FT_LcdFilter_;
pub const FT_Module_Class_ = struct_FT_Module_Class_;
pub const FT_TrueTypeEngineType_ = enum_FT_TrueTypeEngineType_;
pub const FT_Orientation_ = enum_FT_Orientation_;
pub const FT_Glyph_Class_ = struct_FT_Glyph_Class_;
pub const FT_GlyphRec_ = struct_FT_GlyphRec_;
pub const FT_BitmapGlyphRec_ = struct_FT_BitmapGlyphRec_;
pub const FT_OutlineGlyphRec_ = struct_FT_OutlineGlyphRec_;
pub const FT_SvgGlyphRec_ = struct_FT_SvgGlyphRec_;
pub const FT_Glyph_BBox_Mode_ = enum_FT_Glyph_BBox_Mode_;
pub const FT_StrokerRec_ = struct_FT_StrokerRec_;
pub const FT_Stroker_LineJoin_ = enum_FT_Stroker_LineJoin_;
pub const FT_Stroker_LineCap_ = enum_FT_Stroker_LineCap_;
pub const FT_StrokerBorder_ = enum_FT_StrokerBorder_;
