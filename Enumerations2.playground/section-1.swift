enum CocoaConfTutorial: String {
    case GameDevelopment = "Game Development"
    case AVFoundation = "AV Foundation Film School"
    case Swift = "A Swift Kickstart"
    case AllDayiOS = "All Day iOS"
    
    func name() -> String {
        return rawValue
    }
}

var tutorial = CocoaConfTutorial.AVFoundation
tutorial.name()