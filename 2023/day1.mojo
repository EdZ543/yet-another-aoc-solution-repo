fn part1() raises -> Int:
    var total = 0
    var handler = open("day1.txt", "r")
    var input = handler.read()
    print(input[:40])
    handler.close()
    return 0

fn main() raises:
    print("Part 1: ", part1())