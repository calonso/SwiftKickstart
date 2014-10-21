var numbers = [5, 2, 8, 3, 9, 4]

func emphasize(var array: [Int]) -> [Int] {
    for i in 0 ..< array.count {
        array[i] = array[i] * 100
    }
    return array
}

emphasize(numbers)

numbers