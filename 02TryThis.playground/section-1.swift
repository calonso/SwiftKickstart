let coffeeCup = "\u{2615}"
let sixteenthNotes = "\u{266C}"


func display(theCharacter: String) -> String {
    return theCharacter + "\t"
}

func display(times: Int, theCharacter: String ) -> String {
    var singleLineDisplay = ""
    for i in 1...times {
        singleLineDisplay += display(theCharacter)
    }
    return singleLineDisplay
}


func displayLines(lines: Int, theCharacter: String) -> String {
    var multipleLineDisplay = ""
    for i in 1...lines {
        multipleLineDisplay += display(i, theCharacter) + "\n"
    }
    return multipleLineDisplay
}

displayLines(4, coffeeCup)

displayLines(10, sixteenthNotes)
