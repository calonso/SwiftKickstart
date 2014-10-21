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

class CocoaConfTutorialAttendee : CocoaConfAttendee {
    let tutorial: String
    
    init(name: String, hometown: String, tutorial: String) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
    func justForShow(name: String,  homeTown: String,  tutorial:String) {
        // do nothing
    }
}

let anabelle = CocoaConfTutorialAttendee(name:"Anabelle", hometown: "Detroit", tutorial:"Swift")
anabelle.nameBadge()

anabelle.justForShow("a name", homeTown: "a town", tutorial: "a tutorial")

let daniel = CocoaConfAttendee(name: "Daniel", hometown: "Cleveland")
daniel.name
daniel.hometown
daniel.nameBadge()

let kim = CocoaConfAttendee(name: "Kim")
kim.name
kim.hometown
kim.nameBadge()
