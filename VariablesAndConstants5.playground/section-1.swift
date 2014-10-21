let person = "Kickstart Attendee"

var place = "Shaker Heights"

func greetingForLocation(location: String) -> (String) -> String {
    func locationWelcome(name:String) -> String {
        return "\(name) welcome to \(location)."
    }
    return locationWelcome
}


let columbus = greetingForLocation("Columbus, Ohio")
let lasVegas = greetingForLocation("Las Vegas, Nevada")


// type of welcome is (String, (String) -> String) -> String

func welcome(personNamed name:String,
         withMessage greeting:(String) -> String) -> String {
        return greeting(name)
}

welcome(personNamed: person, withMessage: columbus)














