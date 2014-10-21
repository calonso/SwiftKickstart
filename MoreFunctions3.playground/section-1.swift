var numbers = [5, 2, 8, 3, 9, 4]

func emphasize(inout array: [Int],
            modificationOf:(Int) -> Int) {
    for i in 0 ..< array.count {
        array[i] = modificationOf( array[i] )
    }
}

func times100(number:Int) -> Int {
    return number * 100
}

emphasize(&numbers, times100)

numbers