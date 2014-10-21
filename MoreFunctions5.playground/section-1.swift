var numbers = [5, 2, 8, 3, 9, 4]
var doubles = [5.0, 2.0, 8.0, 3.0, 9.0, 4.0]
var strings = ["Five", "Two", "Eight", "Three", "Nine", "Four"]

func emphasize<T>(inout array: [T],
                    modificationOf:(T) -> T) {
        for i in 0 ..< array.count {
            array[i] = modificationOf( array[i] )
        }
}

func times100(number:Int) -> Int {
    return number * 100
}

emphasize(&numbers){number in number * 100}
numbers

emphasize(&doubles){number in number * 100.0}
doubles

emphasize(&strings){string in string + "!"}
strings