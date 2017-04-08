import Foundation

print("=== 1 ==================")

protocol Bird: CustomStringConvertible {
    var name: String { get }
    var canFly: Bool { get }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}

// protocol implementation
struct FlappyBird: Bird, Flyable {
    // protocol Bird
    let name: String
    //let canFly = true //
    
    //var description: String { return "dcsdfsdf" }
    
    // self vars
    let flappyAmplitude: Double
    let flappyFrequency: Double
    
    // protocol Flyable
    var airspeedVelocity: Double {
        return 3 * flappyFrequency * flappyAmplitude
    }
}

var v1 = FlappyBird(name: "Hawk", flappyAmplitude: 1.5, flappyFrequency: 0.5)
print(v1)
print(v1.airspeedVelocity)
print(v1.canFly)

print("\n=== 2 ==================")

struct Penguin: Bird {
    let name: String
    //let canFly = false //
}

let v2 = Penguin(name: "Lolo")
print(v2)
print(v2.canFly)

print("\n=== 3 ==================")

struct Swift: Bird, Flyable {
    // Bird protocol
    var name: String { return "Swift \(version)" }
    //let canFly = true //

    // self vars
    let version: Double
    
    // Flyable protocol
    // Swift is FASTER every version!
    var airspeedVelocity: Double { return version * 1000.0 }
}

let v31 = Swift(version: 2.0)
print(v31)
print(v31.airspeedVelocity)
print(v31.canFly)

let v32 = Swift(version: 3.0)
print(v32)
print(v32.airspeedVelocity)

// default implementation of canFly by Flyable protocol conformance
extension Bird {
    // Flyable birds can fly!
    var canFly: Bool { return self is Flyable }
}


print("\n=== 4 ==================")

enum Beast: Bird, Flyable {
    case phoenix, gnoll, troll
    //var name: String { return self.rawValue }
    var name: String {
        switch self {
        case .phoenix: return "Phoenix"
        case .troll: return "Troll"
        case .gnoll: return "Gnoll"
        }
    }
    var canFly: Bool { return self == .phoenix } // override default Burd extension implementation
    var airspeedVelocity: Double {
        switch self {
        case .phoenix: return 10.0
        case .troll: return 0.1
        case .gnoll: return 0.3
        }
    }
}

let v41 = Beast.gnoll
print(v41)
print(v41.canFly)
let v42 = Beast.phoenix
print(v42)
print(v42.canFly)


print("\n=== 5 ==================")

/*
extension Beast: CustomStringConvertible {
    var description: String {
        return "My name is \(name) and " + (canFly ? "I can fly! 😀" : "I cannot fly 😞")
    }
}
*/

extension CustomStringConvertible where Self: Bird {
    var description: String {
        return "My name is \(name) and " + (canFly ? " OMG!!! I can fly! 😀" : "I cannot fly, that sucks! 😞")
    }
}

print(Beast.phoenix)
print(Penguin.init(name: "Lolo"))


print("\n=== 6 ==================")

class Motorcycle {
    init(name: String) {
        self.name = name
        speed = 200
    }
    var name: String
    var speed: Double
}

protocol Racer {
    var speed: Double { get }  // speed is the only thing racers care about
}

extension FlappyBird: Racer {
    var speed: Double {
        return airspeedVelocity
    }
}

extension Swift: Racer {
    var speed: Double {
        return airspeedVelocity
    }
}

extension Penguin: Racer {
    var speed: Double {
        return 42  // full waddle speed
    }
}

extension Beast: Racer {
    var speed: Double {
        return canFly ? airspeedVelocity : 0
    }
}

extension Motorcycle: Racer { }

let racers: [Racer] = [
    Beast.phoenix,
    Penguin(name: "King Penguin"),
    Beast.gnoll,
    Swift(version: 3.0),
    FlappyBird(name: "Felipe", flappyAmplitude: 3.0, flappyFrequency: 20.0),
    Motorcycle(name: "Giacomo")
]

print(racers)
