struct Vertex {
    var x, y: Double
    
    func moveByX(deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

struct Size {
    var width, height: Double
}

struct Rectangle {
    var size: Size
    var topLeftCorner: Vertex
}

var point = Vertex(x: 3.0, y: 4.0)

let rectangle = Rectangle(size: Size(width: 100.0, height: 2000), topLeftCorner: Vertex(x: 3.0, y: 7.0))

point = point.moveByX(100)
point






