let person = "Kickstart Attendee"

var place = "Shaker Heights"

func columbusWelcome(name: String) -> String {
    return "\(name), welcome to Columbus."
}

func lasVegasWelcome(name: String) -> String {
    return "\(name), welcome to Las Vegas."
}

let greeting = columbusWelcome

greeting(person)
greeting("A Frog")
columbusWelcome(person)

