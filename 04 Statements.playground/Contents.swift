//: Playground - noun: a place where people can play

import Foundation

//////////////////////////////////////////////////////
print("\n=== 1 ==================")

// Statements
// Block

do { // special
    let a = 1
    print(a)
    print(2)
}


//////////////////////////////////////////////////////
print("\n=== 2 ==================")

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

//////////////////////////////////////////////////////
print("\n=== 3 ==================")

// Ternary
let v0 = 3 > 2 ? "a" : "b"
print(v0)

//////////////////////////////////////////////////////
print("=== 4 ==================")

enum Op<T> {
    case Nil
    case Value(v: T)
}

//var aaa: Int
//print(aaa)

// Optionals
var v1: Int? // = nil
print(v1)
v1 = 2
v1 = v1! * 2
print(v1!)

var v111 = v1
type(of: v111)

// force unwrap
let v2 = v1! + 3
print(v2)

// Nil Coalescing
let v3: Int? = 2
let v4 = v3 ?? 6
print(v4)

class CCC1 {
    var a: Int = 0
}
class CCC2 {
    var c: CCC1?
}

var ccc: CCC2? = CCC2()
ccc?.c = CCC1()
ccc?.c?.a = 123
print(ccc?.c?.a)

//////////////////////////////////////////////////////
print("\n=== 5.1 ==================")
// Loops
// For
var v5: String = ""
for i in 0..<10 {
    v5.append(String(i))
}
print(v5)
for i in [4,7,8] {
    v5.append(String(i))
}
print(v5)

// For enumerate
let a1 = [2, 6, 3, 8]
var s1 = 0
for v7 in a1 {
    s1 += v7
}
print(s1)

let dd1 = ["key1": 123, "key2": 234, "key3": 345]
for q in dd1 {
    print(q.key)
    print(q.value)
}
for (k, v) in dd1 {
    print(k)
    print(v)
}

print("--------------")
for i in 0..<10 {
    if (4..<7).contains(i) {
        continue
    }
    print(i)
}

print("--------------")
for i in 9..<1000 {
    if (i % 7) == 0 {
        break
    }
    print(i)
}

print("--------------")
outerloop: for x in 1...4 {
    innerloop: for y in 1...4 {
        if y == 3 {
            continue outerloop
        }
        print("x: \(x), y: \(y)")
    }
}

//////////////////////////////////////////////////////
print("\n=== 5.2 ==================")

// While - precondition
var v8 = 3
while v8 > 0 {
    print(v8)
    v8 -= 1
}

//////////////////////////////////////////////////////
print("\n=== 5.3 ==================")
// While - postcondition
var v9 = 3
repeat {
    print(v8)
    v9 -= 1
} while v9 > 0

//////////////////////////////////////////////////////
print("\n=== 6.1 ==================")

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

var v11 = 31

switch v10 {
case .Apple: print("Apple")
case .Google where v11 == 3: print("Google!!!")
case .Google: print("Google")
case .Microsoft: print("Microsoft")
}

//////////////////////////////////////////////////////
print("\n=== 6.2 ==================")
// Switch

let v12 = "Yes"
switch v12.lowercased() {
    case "no": print("the answer is no")
    case "yes": print("the answer is yes")
    default: print("the answer is maybe")
}

let v13 = 120
switch v13 {
case 0..<100:
    print("the value between 0 and 100");
    fallthrough
case 50..<150:
    print("the value between 50 and 150");
    fallthrough
case 20:
    print("the value is 20")
    fallthrough
default: print("default")
}

let v14 = 10
var v15 = "a"

switch (v14, v15) {
case (10, _): print(111)
case (10, "b"):
    print(1)
default:
    print(0)
}

//var qqq = 5
//if qqq = 4 { }
