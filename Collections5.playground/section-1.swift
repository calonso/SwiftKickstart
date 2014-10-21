var tourStops = ["August": "Columbus",
              "September":"Las Vegas",
                "October":"Seattle"]

tourStops["August"]

tourStops["July"]

tourStops["Novmember"] = "Alaska"
tourStops["November"] = "Boston"

tourStops.removeValueForKey("Novmember")
tourStops.removeValueForKey("July")

tourStops.count
tourStops

let someStop = tourStops["November2"]

if someStop != nil {
    let validStop = someStop!
    println("Stopped in \(validStop)")
} else {
    println("No stop that month")
}


if let validStop = someStop {
    println("Stopped in \(validStop)")
} else {
    println("No stop that month")
}













