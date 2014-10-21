struct Vertex {
    var x, y :Double
}

var point = Vertex(x: 3.0, y: 4.0)
point.x
point.y

var anotherPoint = point

point.x = 100
anotherPoint.y = 1000

point
anotherPoint


class VertexAlt {
    var x, y: Double
    init(x:Double, y:Double) {
        self.x = x
        self.y = y
    }
}

var pointA = VertexAlt(x: 3.0, y: 4.0)
var pointB = pointA

pointA.x = 100.0
pointB.y = 1000.0

pointA
pointB






