enum CocoaConfTutorial: Int {
    case GameDevelopment
    case AVFoundation
    case Swift
    case AllDayiOS
}

var possibleTutorial = CocoaConfTutorial(rawValue: 2)

if let actualTutorial = possibleTutorial {
    // do something with actualTutorial it is unwrapped
} else {
    // possibleTutorial is nil
}


var tutorial = CocoaConfTutorial.AVFoundation

tutorial.rawValue

//tutorial = .Swift

switch tutorial {
case .Swift, .AllDayiOS:
    println("What a great choice")
default:
    println("Whatever")
}