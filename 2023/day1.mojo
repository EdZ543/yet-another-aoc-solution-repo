fn part1() raises -> Int:
    with open("2023/day1.txt", "r") as f:
        let input = f.read()
        var d1 = String()
        var d2 = String()
        var total = 0

        for i in range(len(input)):
            let c = input[i]

            if c == "\n" or i == len(input) - 1:
                let num = atol(d1 + d2)
                total += num
                d1 = String()
                d2 = String()

            if isdigit(ord(c)):
                if not d1:
                    d1 = c
                d2 = c

        return total



fn main() raises:
    print("Part 1: ", part1())