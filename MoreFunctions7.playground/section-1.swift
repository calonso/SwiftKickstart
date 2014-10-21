extension Array {
    func emphasize(modificationOf:(T) -> T) -> [T] {
        var tempArray = [T]()
        for i in 0 ..< self.count {
            tempArray += [modificationOf( self[i] )]
        }
        return tempArray
    }
}

var numbers = [5, 2, 8, 3, 9, 4]
var doubles = [5.0, 2.0, 8.0, 3.0, 9.0, 4.0]
var strings = ["Five", "Two", "Eight", "Three", "Nine", "Four"]


func times100(number:Int) -> Int {
    return number * 100
}


numbers = numbers.emphasize{number in number * 10}
numbers

let alteredDoubles = doubles.emphasize{number in number * 100.0}
doubles
alteredDoubles

strings.emphasize{string in string + "!"}
strings