class CocoaConfAttendee  {
    let name: String
    let hometown: String?
    var isFromSomewhere: Bool {
        return hometown != nil
    }
    
    init(name: String, hometown: String) {
        self.name = name
        self.hometown = hometown
    }
    
    init(name: String) {
        self.name = name
    }
    
    func nameBadge() -> String {
        var validHometown: String
        if isFromSomewhere {
            validHometown = " from \(hometown!)"
        } else {
            validHometown = ""
        }
        return "Hello, I'm \(name) \(validHometown)."
        
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
