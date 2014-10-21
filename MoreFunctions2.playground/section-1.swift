var numbers = [5, 2, 8, 3, 9, 4]

func emphasize(inout array: [Int]) {
    for i in 0 ..< array.count {
        array[i] = array[i] * 100
    }
}

emphasize(&numbers)

numbers