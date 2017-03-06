import Foundation

// Value types

// Simple types
1
1.5
"ABC"

// Bool
let boolA = true
let boolB = false
let boolRes = boolA || boolB
type(of: boolRes)

let t = Int("234") // string to int conversion (success)
let tt = Int("2a34") // string to int conversion (fail)
Double(t!) + 0.5

// Int
let intA: Int = 1 // exactly set of result type
let intB = 12 // implicit set of result type
let intRes = intA + intB
type(of: intRes)

// Double & Float
let floatA: Double = 1.5
let floatB = 2.5
let floatRes = floatA - floatB
type(of: floatRes)

// Chars
let charA = Character("A")
let charB: Character = "B"
let arrA = [charA, charB]
let charRes = String(arrA) //
type(of: arrA)
type(of: charA)
type(of: charRes)

// String
let stringA = "ABC"
let stringB: String = "qwe"
var stringRes = stringA + stringB // var!
type(of: stringRes)
//stringA.characters
stringRes.append(charB)
stringRes.append("QQQ")


// Tuple
// Named
typealias Tuple = (v: String, c: Int)
let tuple10 = Tuple(v: "abc", c: 3)
let tuple11 = Tuple("qaz", 2)
let tuple0_v = tuple10.v
let tuple1_c = tuple11.c
let tuple1_0 = tuple11.0

let tuple3 = ("qwe", 123)
type(of: tuple3)
type(of: tuple10)
tuple3.1

// Unnamed
typealias Tuple2 = (String, Int)
let t2 = Tuple2("qwe", 5)
let t2v0 = t2.0
let t2v1 = t2.1

// Ranges
let r1 = 0..<5
r1.count
let r2 = 1...10
r2.count

for q in 2..<15 {
    print(q)
    q*q*q*q
}
