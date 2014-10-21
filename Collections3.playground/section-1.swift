var places = [String]()

places += ["Columbus", "Las Vegas", "Seattle"]

places

for i in 0 ... (places.count - 1) {
    println(places[i])
}

for i in 0 ..< places.count {
    println(places[i])
}

for place in places {
    println(place)
}

for (index, place) in enumerate(places) {
    println(" (\(index + 1)) \(place)")
}