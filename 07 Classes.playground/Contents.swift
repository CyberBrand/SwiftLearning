import Foundation
/*
//////////////////////////////////////////////////////
print("=== 1 ==================")

struct Coordinate {
    var x: Double
    var y: Double
}

class Point {
    
    var position: Coordinate
    
    init(coordinate: Coordinate) {
        position = coordinate
    }
    
    func move(to newPosition: Coordinate) {
        position = newPosition
    }
    
    func info() {
        print("Point at x = \(position.x), y = \(position.y)")
    }
    
}

class Rect: Point {
    
    var secondPosition: Coordinate
    
    init(coordinate1: Coordinate, coordinate2: Coordinate) {
        secondPosition = coordinate2
        super.init(coordinate: coordinate1)
    }
    
    override func info() {
        print("Rect at x1 = \(position.x), y1 = \(position.y), x2 = \(secondPosition.x), y2 = \(secondPosition.y)")
    }
    
    override func move(to newPosition: Coordinate) {
        let delta = Coordinate(x: newPosition.x - position.x, y: newPosition.y - position.y)
        super.move(to: newPosition)
        secondPosition.x += delta.x
        secondPosition.y += delta.y
    }
 
}

let point = Point(coordinate: Coordinate(x: 10, y: 20))
point.info()
point.move(to: Coordinate(x: 30, y: 100))
point.info()

let rect = Rect(coordinate1: Coordinate(x: 15, y: 25), coordinate2: Coordinate(x: 30, y: 50))
rect.info()
rect.move(to: Coordinate(x: 200, y: 250))
rect.info()
print("----------")
func f(_ obj: Point) {
    obj.move(to: Coordinate(x: 100, y: 100))
    obj.info()
}

f(point)
f(rect)
*/
//////////////////////////////////////////////////////
print("\n=== 2 ==================")

open class A {
    static var b = 177
    var a: Int = 5 {
//        get {
//            return 222
//        }
//        set {
//            print("set \(newValue) ")
//        }
        willSet {
            print("will set \(a) -> \(newValue)")
        }
        didSet {
            print("did set \(oldValue) -> \(a) ")
        }
    }
    fileprivate func fff() { }
    required public init() { print("A created") }
    deinit { print("A destroyed") }
}

// open
// public 
// internal - by default
// fileprivate
// private


var a: A?
a = A()
//a = nil

//var b = a
//a = nil
//print(111)
//b = nil

weak var b = a
a = nil
//print(b ?? "nil")
//print(111)
b?.a
b?.a = 111
b?.a

class B: A { }

func f2(t: A.Type) {
    let aaa  = t.init()
    aaa.a = 135
}

b?.fff()

f2(t: A.self)
f2(t: B.self)
A.b
A.b = 123
A.b
