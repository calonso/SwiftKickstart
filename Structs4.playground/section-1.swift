import Foundation

prefix operator √{} // option - v

prefix func √ (argument: Double) -> Double {
    return sqrt(argument)
}

postfix operator ** {}

postfix func ** (number: Double) -> Double {
    return number * number
}

struct Vertex {
    var x, y :Double
    var magnitude: Double {
        get {
            return √(x** + y**)
        }
        set(newValue) {
            let multiplier = newValue/magnitude
            x *= multiplier
            y *= multiplier
        }
    }
}

var point = Vertex(x: 3.0, y: 4.0)
point.x
point.y
point.magnitude

point.magnitude = 20







