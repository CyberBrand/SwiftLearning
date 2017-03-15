import Foundation

// Assign
let a = 12, b = 5

// Arithmetic

let c01 = a + b
let c02 = a - b
let c03 = a * b
let c04 = a / b
let c06 = a ^ b // 1100 ^ 0101 = 1001
let c07 = a | b // 1100 | 0101 = 1101
let c08 = a & b // 1100 & 0101 = 0100

// Logical
let c20 = true || false // true
let c21 = true && false // false
let c22 = !true // false

// Remainder
let c30 = a % b

// Floating-Point Remainder

//let c31 = 11.0 % 1.5
let c31 = 11.0.truncatingRemainder(dividingBy: 1.5)

// Unary
let c40 = -a
let c41 = +a

// Compound Assignment
var d = 10
d += 15
d -= 5
d /= 2 // d = d / 2
d += 1 // d = d + 1
// a = 4
// b = ++a + a++

// Comparison
let c60 = a == b
let c61 = a != b
let c62 = a < b
let c63 = a > b
let c64 = a <= b
let c65 = a >= b

struct A: Comparable, Equatable {
    var a : Int
    static func > (q: A, q2: A) -> Bool { return q.a > q2.a }
    static func < (q: A, q2: A) -> Bool { return q.a < q2.a }
    static func >= (q: A, q2: A) -> Bool { return q.a >= q2.a }
    static func <= (q: A, q2: A) -> Bool { return q.a <= q2.a }
    static func == (q: A, q2: A) -> Bool {
        return q.a == q2.a
    }
    
}

var t1: A = A(a: 10)
var t2: A = A(a: 20)
print(t1 == t2, terminator: "---")
print("a")

