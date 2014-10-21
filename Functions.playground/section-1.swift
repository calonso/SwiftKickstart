func helloWorld1() {
    print("Hello, ")
    println("World!")
    println("Glad to be in London.")
}


func helloWorld2(name: String) {
    println("Hello, \(name).")
}
func helloManyTimes(name: String,
           numberOfTimes: Int) {
            for i in 1 ... numberOfTimes {
                helloWorld2(name)
            }
}


helloWorld1()
helloWorld2("London")
helloManyTimes("London again ", 5)
