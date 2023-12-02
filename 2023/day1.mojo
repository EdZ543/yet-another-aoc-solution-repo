fn part1() raises -> Int:
    var d1 = String()
    var d2 = String()
    var total = 0

    with open("2023/inputs/day1.txt", "r") as f:
        let input = f.read()

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


fn parse_num_words(s: String, i: Int) -> String:
    if s[i:i + 3] == "one":
        return '1'
    if s[i:i + 3] == "two":
        return '2'
    if s[i:i + 5] == "three":
        return '3'
    if s[i:i + 4] == "four":
        return '4'
    if s[i:i + 4] == "five":
        return '5'
    if s[i:i + 3] == "six":
        return '6'
    if s[i:i + 5] == "seven":
        return '7'
    if s[i:i + 5] == "eight":
        return '8'
    if s[i:i + 4] == "nine":
        return '9'
    return "0"

fn part2() raises -> Int:
    var d1 = String()
    var d2 = String()
    var total = 0

    with open("2023/inputs/day1.txt", "r") as f:
        let input = f.read()

        for i in range(len(input)):
            let c = input[i]

            let digit = parse_num_words(input, i)
            if isdigit(ord(c)):
                if not d1:
                    d1 = c
                d2 = c
            elif digit != "0":
                if not d1:
                    d1 = digit
                d2 = digit

            if c == "\n" or i == len(input) - 1:
                let num = atol(d1 + d2)
                total += num
                d1 = String()
                d2 = String()

    return total


fn main() raises:
    print("Part 1: ", part1())
    print("Part 2: ", part2())