protocol Movable {
    func moveByX(x: Double) -> Self
}

func shiftLeft(movable:Movable) -> Movable {
    return movable.moveByX(-1)
}

struct Vertex: Movable {
    var x, y: Double
    
    func moveByX(deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

struct Size {
    var width, height: Double
}

struct Rectangle: Movable {
    var size: Size
    var topLeftCorner: Vertex
    
    func moveByX(x: Double) -> Rectangle {
        let movedTopLeftCorner = topLeftCorner.moveByX(x)
        return Rectangle(size: size,
                topLeftCorner: movedTopLeftCorner)
    }
}

var point = Vertex(x: 3.0, y: 4.0)
let shiftedPoint = point.moveByX(4)
let rectangle = Rectangle(size: Size(width: 200, height: 100), topLeftCorner: point)

let shiftedRectangle = shiftLeft(rectangle)

if let shiftedLeftPoint = shiftLeft(point) as? Vertex {
    let shiftedRectangle2 = Rectangle(size: rectangle.size,
        topLeftCorner: shiftedLeftPoint)
} else {
    // nothing
}
point
shiftedPoint













