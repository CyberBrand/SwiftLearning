import Foundation

// Struct values

// Array
var aa = [1, 2, 3]
let ab = [2, 3, 4, 5]
let ar = aa + ab
aa.append(contentsOf: ab)
aa
type(of: ar)

let aa2: [Int] = [1,5,7]
let aa3: Array<Int> = Array<Int>([1,6,9])

let aa1: Array<Any> = [1, 2.5, "AAA"]
type(of: aa1)

var ab1 = ar[2..<5]
var ab2 = ar
ab2[1..<3] = []
ab2
ab2[2...4] = [10, 20, 30, 40]
ab2

var ab3 = [1,2]
ab3[1..<1] = [10, 20, 30]
ab3
//ab1[1..<2] = [1]

// Set
let s1: Set = [1, 2, 3, 4, 1, 2, 3, 4, 1, 2]
let s2 = Set<Int>([1, 2, 3, 4, 1, 2, 3, 4, 1, 2])
s1.contains(10)
s1.contains(2)

// Dictionary
var d1 = ["k1": "v1", "k2": "v2", "k3": "v3", "k4": "v4"]
type(of: d1)
let d2 = ["k1": "v1", "k2": "v2", "k3": "v3", "k4": 1] as [String : Any]
type(of: d2)
//let d3 = Dictionary<String, String>(["v1", "k2": "v2", "k3": "v3", "k4": "v4"]) TODO
//type(of: d2)

d1["k2"] = "NEW V2"
d1
d1["k2"] = nil
d1
d1["KKK"] = "VVV"
d1
d1["QQQ"]
let b = d1.contains { return $0.key == "k3" && $0.value == "v33" }
b

// Custom value types

// Enums

enum Beer: Int {
    case Kozel = 5, Bud, Baltika
    static var rrr = 123
    func toString() -> String {
        if self == .Kozel { return "Kozel" }
        if self == .Bud { return "Bud" }
        if self == .Baltika { return "Baltika" }
        return ""
    }
}
let ea = Beer.Bud
let eb: Beer = .Baltika
ea == eb
ea.toString()
Beer.rrr
ea.rawValue

// Structs
struct Invoice {
    var beer: Beer
    var count: Int
    var price: Double
    var totalPrice: Double { return price * Double(count) } // not stored
    func doubleCount() -> Int { return count * 2 }
}

let inv1 = Invoice(beer: .Baltika, count: 10, price: 50.0)
inv1
inv1.totalPrice
inv1.doubleCount()
type(of: inv1)

// inv1.price = 100.0

struct III {
    var v1: Int
    var v2: String = ""
    init(v1: Int) {
        self.v1 = v1
    }
    init(v1: Int, v2: String) {
        self.v1 = v1
        self.v2 = v2
    }
}

III(v1: 123)

let r = arc4random() % 100




