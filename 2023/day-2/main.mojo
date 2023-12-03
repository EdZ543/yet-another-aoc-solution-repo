fn all_digits(s: String) -> Bool:
    for i in range(len(s)):
        if not isdigit(ord(s[i])):
            return False
    return True

fn part1() raises -> Int:
    with open("2023/day-2/input.txt", "r") as f:
        let input = f.read()
        var id_sum = 0
        var id = 1
        var possible = True
        var word = String()

        for i in range(len(input)):
            let c = input[i]

            if c == " " or c == "\n":
                if all_digits(word):
                    let num = atol(word)
                    let colour = input[i + 1]
                    if (colour == "r" and num > 12)
                        or (colour == "g" and num > 13)
                        or (colour == "b" and num > 14):
                        possible = False

                word = String()
            else:
                word += c

            if c == "\n":
                if possible:
                    id_sum += id

                possible = True
                id += 1

        return id_sum

fn part2() raises -> Int:
    with open("2023/day-2/input.txt", "r") as f:
        let input = f.read()
        var power_sum = 0
        var word = String()
        var min_r = 0
        var min_g = 0
        var min_b = 0

        for i in range(len(input)):
            let c = input[i]

            if c == " " or c == "\n":
                if all_digits(word):
                    let num = atol(word)
                    let colour = input[i + 1]
                    if colour == "r" and num > min_r:
                        min_r = num
                    elif colour == "g" and num > min_g:
                        min_g = num
                    elif colour == "b" and num > min_b:
                        min_b = num

                word = String()
            else:
                word += c

            if c == "\n":
                let power = min_r * min_g * min_b
                power_sum += power

                min_r = 0
                min_g = 0
                min_b = 0

        return power_sum


fn main() raises:
    print("Part 1: ", part1())
    print("Part 2: ", part2())