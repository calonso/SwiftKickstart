class CocoaConfAttendee  {
    let name: String
    let hometown: String
    
    init(name: String, hometown: String) {
        self.name = name
        self.hometown = hometown
    }
    
    convenience init(name: String) {
        self.init(name: name, hometown: "Cleveland")
    }
    
    func nameBadge() -> String {
        return "Hello, I'm \(name) from \(hometown)."
    }
    
}

let daniel = CocoaConfAttendee(name: "Daniel", hometown: "Cleveland")
daniel.name
daniel.hometown
daniel.nameBadge()

let kim = CocoaConfAttendee(name: "Kim")
kim.name
kim.hometown

