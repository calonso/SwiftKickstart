var places = ["Columbus", "Las Vegas", "Seattle"]

func greetingForLocation(location: String) -> (String) -> String {
    func locationWelcome(name:String) -> String {
        return "\(name) welcome to \(location)."
    }
    return locationWelcome
}

let greetings = [greetingForLocation(places[0]),
                 greetingForLocation(places[1]),
                 greetingForLocation(places[2])]

greetings[1]("A frog")


var shorterGreetings = places.map{greetingForLocation($0)}

shorterGreetings[2]("An Iguana")