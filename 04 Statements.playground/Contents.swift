//: Playground - noun: a place where people can play

import Foundation

// Statements
// Block

do {
    print(1)
    print(2)
}


// Conditional
// If

if 3 > 2 {
    print("1. true")
}

if 2 > 3 {
    print("2. true")
} else {
    print("2. false")
}

// Ternary
let v0 = 3 > 2 ? "a" : "b"
print(v0)

// Optionals
let v1: Int? = 2
print(v1)

// force unwrap
let v2 = v1! + 3
print(v2)

// Nil Coalescing
let v3: Int? = nil
let v4 = v3 ?? 6
print(v4)

// Loops
// For
var v5: String = ""
for i in 0..<10 {
    v5.append(String(i))
}
print(v5)

// For enumerate
let a1 = [2,6,3,8]
var s1 = 0
for v7 in a1 {
    s1 += v7
}
print(s1)

// While - precondition
var v8 = 3
while v8 > 0 {
    print(v8)
    v8 -= 1
}

// While - postcondition
var v9 = 3
repeat {
    print(v8)
    v9 -= 1
} while v9 > 0

// Switch (enum)
enum Vendor {
    case Apple, Google, Microsoft
}
let v10: Vendor = .Google

switch v10 {
case .Apple: print("Apple")
case .Google: print("Google")
case .Microsoft: print("Microsoft")
}

var v11 = 3

switch v10 {
case .Apple: print("Apple")
case .Google where v11 == 3: print("Google!!!")
case .Google: print("Google")
case .Microsoft: print("Microsoft")
}
