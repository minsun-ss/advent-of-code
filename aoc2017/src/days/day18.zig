const std = @import("std");


pub fn readFile(fileName: []const u8) ![]const u8 {
    var buffer: [4096]u8 = undefined;

    const file = try std.fs.cwd().openFile(fileName, .{});
    defer file.close();


    const bytes_read = try file.readAll(&buffer);
    return buffer[0..bytes_read];
}

pub fn part1() void {
    var cmds = read
    // cmds = [i.split() for i in open('data/day18').read().strip().split("\n")]

    // last_played = None
    // recovered_frequency = None
    // registers = defaultdict(lambda: 0)
    // idx = 0
    // while True:
    //     cmd = cmds[idx]

    //     match(cmd[0]):
    //         case "snd":
    //             last_played = registers[cmd[1]]
    //             idx += 1
    //         case "set":
    //             if cmd[2].isalpha():
    //                 registers[cmd[1]] = registers[cmd[2]]
    //             else:
    //                 registers[cmd[1]] = int(cmd[2])
    //             idx += 1
    //         case "add":
    //             registers[cmd[1]] = registers[cmd[1]] + int(cmd[2])
    //             idx += 1
    //         case "mul":
    //             if cmd[2].isalpha():
    //                 registers[cmd[1]] = registers[cmd[1]] * registers[cmd[2]]
    //             else:
    //                 registers[cmd[1]] = registers[cmd[1]] * int(cmd[2])
    //             idx += 1
    //         case "mod":
    //             if cmd[2].isalpha():
    //                 registers[cmd[1]] = registers[cmd[1]] % registers[cmd[2]]
    //             else:
    //                 registers[cmd[1]] = registers[cmd[1]] % int(cmd[2])
    //             idx += 1
    //         case "jgz":
    //             if registers[cmd[1]] > 0:
    //                 idx += int(cmd[2])
    //             else:
    //                 idx += 1
    //         case "rcv":
    //             if registers[cmd[1]] != 0:
    //                 recovered_frequency = last_played
    //                 break
    //             idx += 1

    // recovered_frequency

}
