func hi(name: String) {
    println("hello, \(name)")
}


func hello2(people: String...) {
    for person in people {
        hi(person)
    }
}

hello2("One", "Two", "Three")
hello2()
