const std = @import("std");
const day17_2 = @import("days/day17.zig").part2;

pub fn main() !void {
    std.debug.print("Day 17, part 2:  {d} \n", .{day17_2()});
}
