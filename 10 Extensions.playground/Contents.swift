import Foundation

print("=== 1 ==================")

struct S1 {
    var t: Int
    func f() { }
}

extension S1 {
    func asStringFunc() -> String {
        return String(t)
    }
}

extension S1 {
    var asStringVar: String {
        return String(t)
    }
    //func f() { }
}

let v1 = S1(t: 123)
print(v1.asStringVar)
print(v1.asStringFunc())

print("\n=== 2 ==================")

var v2 = "ab🤓cdef"
//print(v1[0])

extension String {
    subscript (i: Int) -> Character {
        get {
            return characters[characters.index(characters.startIndex, offsetBy: i)]
        }
        set {
            let start = characters.index(startIndex, offsetBy: i)
            let end = characters.index(startIndex, offsetBy: i + 1)
            let range = start..<end
            characters.replaceSubrange(range, with: [newValue])
        }
    }

//    subscript (i: Int) -> Character {
//        get {
//            return characters[characters.index(characters.startIndex, offsetBy: i)]
//        }
//        set {
//            let start = index(startIndex, offsetBy: i)
//            let end = index(startIndex, offsetBy: i + 1)
//            let range = start..<end
//            replaceSubrange(range, with: [newValue])
//        }
//    }
}

print(v2)
print(v2[2])
v2[2] = "😎"
print(v2[2])
print(v2)

/////////////////////
var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")
// Prints "the number of characters in cafe is 4"

word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.characters.count)")
// Prints "the number of characters in café is 4"
/////////////////////

print("\n=== 2 ==================")

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

let distance = 100.m + 1.5.km + 3.ft
print(distance)

print("\n=== 3 ==================")

extension Int {
    mutating func square() {
        self = self * self
    }
    mutating func power(base: Int) {
        self = Int(pow(Double(self), Double(base)))
    }
}

var v3 = 5
v3.square()
print(v3)
v3 = 3
v3.power(base: 4)
print(v3)

print("\n=== 4 ==================")
/*
protocol Stringable {
    var asString: String { get }
}

struct S4 {
    var a: Double
}

var v4 = S4(a: 123)
print(v4.a)
//print(v4.asString)

extension S4: Stringable {
    var asString: String { return String(a) }
}

//print(v4.asString)

extension Int: Stringable {
    var asString: String { return String(self) }
}

//print(56.asString)

func f4(a1: Stringable, a2: Stringable) -> String{
    return "\(a1.asString) and \(a2.asString)"
}

print(f4(a1: v4, a2: 123))

// protocol extension
extension Stringable {
    var length: Int {
        return asString.characters.count
    }
}

print(1234.length)
print(v4.length)
*/
print("\n=== 5 ==================")
