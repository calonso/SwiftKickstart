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

columbus(person)
columbus("A Frog")
lasVegas("A water bottle")

