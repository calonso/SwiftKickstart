protocol Movable {
    func moveByX(x: Double) -> Self
    func moveLeftOf(otherMovable:Self) -> Self
}

func shiftLeft<T: Movable>(movable:T) -> T {
    return movable.moveByX(-1)
}

func move<T: Movable>(objectToBeMoved:T,
             nextToObject otherObject: T) -> T {
        return objectToBeMoved.moveLeftOf(otherObject)
}

struct Vertex: Movable {
    var x, y: Double
    
    func moveByX(deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
    func moveLeftOf(otherVertex: Vertex) -> Vertex {
        return moveByX(otherVertex.x - x - 1)
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
    
    func moveLeftOf(otherRectangle: Rectangle) -> Rectangle {
        return moveByX(otherRectangle.topLeftCorner.x + size.width - topLeftCorner.x - 1)
    }
}

var point = Vertex(x: 3.0, y: 4.0)
let shiftedPoint = point.moveByX(4)
let rectangle = Rectangle(size: Size(width: 200, height: 100), topLeftCorner: point)

let shiftedRectangle = shiftLeft(rectangle)

let shiftedLeftPoint = shiftLeft(point)
let shiftedRectangle2 = Rectangle(size: rectangle.size,
                         topLeftCorner: shiftedLeftPoint)

point
shiftedPoint

move(point, nextToObject: shiftedPoint)
move(rectangle, nextToObject:shiftedRectangle)
//move(point, nextToObject: rectangle)













