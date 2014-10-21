func hello11(name: String) -> String {
    return "Hello, \(name)"
}

hello11("Daniel")

func hello12(aListOfPeopleNamed people: String...) -> (count:Int, peopleList:String) {
    var tempString = ""
    for person in people {
        tempString += person + "\n"
    }
    return (people.count, tempString)
}

let result = hello12(aListOfPeopleNamed: "Fred", "Stanley", "Lucy")

result.count
result.peopleList
result.0
result.1

let (myCount, myList) = hello12(aListOfPeopleNamed: "Fred", "Stanley", "Lucy")

myCount

myList






