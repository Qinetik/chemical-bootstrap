const std = @import("std");

pub fn build(b: *std.Build) void {
    const test_step = b.step("test", "Test");
    test_step.dependOn(b.getInstallStep());

    const lib = b.addSharedLibrary(.{
        .name = "lib",
        .root_source_file = .{ .path = "lib.zig" },
        .target = .{ .cpu_arch = .wasm32, .os_tag = .freestanding },
        .optimize = b.standardOptimizeOption(.{}),
    });
    lib.use_llvm = false;
    lib.use_lld = false;
    lib.strip = false;
    lib.install();

    const check_lib = lib.checkObject(.wasm);
    check_lib.checkStart("Section type");
    // only 2 entries, although we have 3 functions.
    // This is to test functions with the same function signature
    // have their types deduplicated.
    check_lib.checkNext("entries 2");
    check_lib.checkNext("params 1");
    check_lib.checkNext("type i32");
    check_lib.checkNext("returns 1");
    check_lib.checkNext("type i64");
    check_lib.checkNext("params 0");
    check_lib.checkNext("returns 0");

    test_step.dependOn(&check_lib.step);
}
