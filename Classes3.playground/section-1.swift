class CocoaConfAttendee  {
    let name: String
    let hometown: String?
    
    init(name: String, hometown: String) {
        self.name = name
        self.hometown = hometown
    }
    
    init(name: String) {
        self.name = name
    }
    
    func nameBadge() -> String {
        if let validHometown = hometown {
            return "Hello, I'm \(name) from \(validHometown)."
        } else {
            return "Hello, I'm \(name) from here and there"
        }
    }
}

let daniel = CocoaConfAttendee(name: "Daniel", hometown: "Cleveland")
daniel.name
daniel.hometown
daniel.nameBadge()

let kim = CocoaConfAttendee(name: "Kim")
kim.name
kim.hometown
kim.nameBadge()
