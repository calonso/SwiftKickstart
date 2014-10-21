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
    var x: Double {
        willSet(newValue) {
            println("About to change x from \(x) to \(newValue)")
        }
        didSet(oldValue) {
            println("Did change x from \(oldValue) to \(x)")
        }
    }
    var y :Double
    var magnitude: Double {
        get {
            return √(x** + y**)
        }
        set(newValue) {
            let multiplier = newValue/magnitude
            println("About to change")
            x *= multiplier
            y *= multiplier
            println("did change")
        }
    }
}

var point = Vertex(x: 3.0, y: 4.0)
point.x
point.y
point.magnitude

point.magnitude = 20







