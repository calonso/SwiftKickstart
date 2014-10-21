func sigma(#start:Int, #end:Int, operation:(Int) -> Int = {a in a} ) -> Int {
    var sum = 0
    for i in start...end {
        sum += operation(i)
    }
    return sum
}

let result = sigma(start: 0, end: 4){ a in a * a}
result

let identity = sigma(start: 0, end: 5)
identity
