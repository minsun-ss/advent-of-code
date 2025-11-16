const aoc2017 = @import("aoc2017");

pub fn part2() i64 {
    const turns: i32 = 370;
    var starting_location: i64 = 0;
    var new_right: i64 = -1;

    var i: i64 = 1;
    var position: i64 = undefined;
    while (i <= 50000001) {
        position = @rem(starting_location + turns, i);
        if (position == 0) {
            new_right = i;
        }
        starting_location = position + 1;
        i += 1;
    }
    return new_right;
}
