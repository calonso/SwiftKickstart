enum CocoaConfTutorial: String {
    case GameDevelopment = "Game Development"
    case AVFoundation = "AV Foundation Film School"
    case Swift = "A Swift Kickstart"
    case AllDayiOS = "All Day iOS"
    
    var name: String {
        return rawValue
    }
}

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
    let tutorial: CocoaConfTutorial
    
    init(name: String, hometown: String, tutorial: CocoaConfTutorial) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial.name)."
    }
    func justForShow(name: String,  homeTown: String,  tutorial:String) {
        // do nothing
    }
}


let anabelle = CocoaConfTutorialAttendee(name: "Anabelle", hometown: "Detroit", tutorial: CocoaConfTutorial.Swift)

anabelle.nameBadge()









