import Foundation

//////////////////////////////////////////////////////
// just a function
print("=== 1 ==================")
func f1() {
    print("f1")
}

// call to it
f1()

//////////////////////////////////////////////////////
print("\n=== 2 ==================")

// a function with result
func f2() -> Int {
    return Int(arc4random() % 10)
}
let v2 = f2()
print("f2 = \(v2)")

//////////////////////////////////////////////////////
print("\n=== 3 ==================")

// a function with parameters
func f3(lowerBound: Int, upperBound: Int) -> Int {
    if lowerBound < upperBound {
        print("Rolling random between \(lowerBound) and \(upperBound)")
        return Int(arc4random() % UInt32(upperBound - lowerBound + 1)) + lowerBound
    }
    return lowerBound
}

// just like obj-c style we should retype parameter name:
let v3 = f3(lowerBound: 1, upperBound: 10)

// however, we can exempt caller to indicate parameter names (by using _)
// so, we have public and private argument names, it's very cool
// when you consider do not use a public parameter name, just use "_" placeholder
func f3_1(_ lowerBound: Int, _ upperBound: Int) -> Int {
    return f3(lowerBound: lowerBound, upperBound: upperBound)
}
let v3_1 = f3_1(1, 10)

//////////////////////////////////////////////////////
print("\n=== 4 ==================")

// nice using range (once again)
func f4(range: Range<Int>) -> Int {
    return f3(lowerBound: range.lowerBound, upperBound: range.upperBound - 1)
}

// to be discommented while in demo
//func f4(range: ClosedRange<Int>) -> Int {
//    return f3(lowerBound: range.lowerBound, upperBound: range.upperBound)
//}

let v4 = f4(range: 0..<5)
//let v41 = f4(range: 0...5)

//////////////////////////////////////////////////////
print("\n=== 5 ==================")

// function can return complex result(s) also
func f5(source: String) -> [Character: Int] {
    var result: [Character: Int] = [:]
    for char in source.characters {
        result[char] = (result[char] ?? 0) + 1
    }
    return result
}

print(f5(source: "abcabcbcb"))

//////////////////////////////////////////////////////
print("\n=== 6 ==================")

// tuples are possible results also too
func f6(source: [Int]) -> (min: Int, max: Int) {
    var result: (min: Int, max: Int) = (Int.max, Int.min)
    for element in source {
        if element < result.min { result.min = element }
        if element > result.max { result.max = element }
    }
    return result
}

print(f6(source: [6, 4, 9, 2]))
//print(f6(source: []))

//////////////////////////////////////////////////////
print("\n=== 7 ==================")

// functions can modify input values (& sign is required for call)
func f7int(v1: inout Int, v2: inout Int) {
    let temp = v1
    v1 = v2
    v2 = temp
}

var v7_i1 = 2
var v7_i2 = 3
print("before: \(v7_i1), \(v7_i2)")
f7int(v1: &v7_i1, v2: &v7_i2)
print("after: \(v7_i1), \(v7_i2)")

func f7str(v1: inout String, v2: inout String) {
    let temp = v1
    v1 = v2
    v2 = temp
}

var v7_s1 = "ab"
var v7_s2 = "cd"
print("before: \(v7_s1), \(v7_s2)")
f7str(v1: &v7_s1, v2: &v7_s2)
print("after: \(v7_s1), \(v7_s2)")

print("---------------")

// we have two functions to produce the same logic, let's create generic
func f7<T>(v1: inout T, v2: inout T) {
    let temp = v1
    v1 = v2
    v2 = temp
}

v7_i1 = 2
v7_i2 = 3
print("before: \(v7_i1), \(v7_i2)")
f7(v1: &v7_i1, v2: &v7_i2)
print("after: \(v7_i1), \(v7_i2)")

v7_s1 = "ab"
v7_s2 = "cd"
print("before: \(v7_s1), \(v7_s2)")
f7(v1: &v7_s1, v2: &v7_s2)
print("after: \(v7_s1), \(v7_s2)")
// as we can see - it works! 😎

//////////////////////////////////////////////////////
print("\n=== 8 ==================")

// what about more complex generics? 
// suppose we have some "stack" struct
// pay attention to "mutating" keyword
struct IntStack {
    var items: [Int] = []
    mutating func push(value: Int) { items.append(value) }
    mutating func pop() -> Int { return items.removeLast() }
    var count: Int { return items.count }
    init() { }
}

var s8_int = IntStack()
print(s8_int.items)
s8_int.push(value: 10)
print(s8_int.items)
s8_int.push(value: 20)
print(s8_int.items)
s8_int.push(value: 30)
print(s8_int.items)

print(s8_int.pop())
print(s8_int.items)
print(s8_int.pop())
print(s8_int.items)

// it works, but what about other types than Int?
// generics is the answer:
struct Stack<T> {
    var items: [T] = []
    mutating func push(value: T) { items.append(value) }
    mutating func pop() -> T { return items.removeLast() }
    var count: Int { return items.count }
    init() { }
}

var s8_1 = Stack<Int>()
print(s8_1.items)
s8_1.push(value: 10)
print(s8_1.items)
s8_1.push(value: 20)
print(s8_1.items)
s8_1.push(value: 30)
print(s8_1.items)

print(s8_1.pop())
print(s8_1.items)
print(s8_1.pop())
print(s8_1.items)

print("------------")

var s8_2 = Stack<String>()
print(s8_2.items)
s8_2.push(value: "ab")
print(s8_2.items)
s8_2.push(value: "cd")
print(s8_2.items)
s8_2.push(value: "ef")
print(s8_2.items)

print(s8_2.pop())
print(s8_2.items)
print(s8_2.pop())
print(s8_2.items)
