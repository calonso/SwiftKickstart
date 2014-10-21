func hello() {
    print("Hello, ")
    println("World!")
    println("Glad to be in London.")
}


func hello(name: String) {
    println("Hello, \(name).")
}
func hello(name: String,
    numberOfTimes: Int) {
        for i in 1 ... numberOfTimes {
            hello(name)
        }
}

func helloWorld3(name: String = "World") {
    println("Hello, \(name)")
}

func helloWorld4(toPersonWithName name: String,
    numberOfTimes:Int = 1) {
        for i in 1 ... numberOfTimes {
            helloWorld3(name: name)
        }
}

func helloWorld5(#toPersonWithName: String) {
    println("Hello \(toPersonWithName)")
}

helloWorld3( name: "Kim")
helloWorld3()
helloWorld4(toPersonWithName:"Maggie", numberOfTimes: 5)
helloWorld4(toPersonWithName: "Anabelle")
helloWorld5(toPersonWithName: "My friend")










//hello()
//hello("London")
//hello("London again ", 5)
