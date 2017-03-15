import Foundation

//////////////////////////////////////////////////////
// suppose we have 2 functions (additive and multiply for two Ints)
print("\n=== 1 ==================")
func f1_add(_ v1: Int, _ v2: Int) -> Int {
    return v1 + v2
}

func f1_mul(_ v1: Int, _ v2: Int) -> Int {
    return v1 * v2
}

print(f1_add(10, 2))
print(f1_mul(10, 2))
// ok, it works

//////////////////////////////////////////////////////
print("\n=== 2 ==================")

// what about distinguish operation between that Ints?
// we can provide closure that opterate with two input Ints and produces Int result:
func f2(_ v1: Int, _ v2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(v1, v2)
}

// omg, we can use our previous functions!
let vvvv = f1_add
let v2_1 = f2(10, 2, operation: vvvv)
let v2_2 = f2(10, 2, operation: f1_mul)

print(v2_1)
print(v2_2)

// moreover, our functions have *exactly* the same declarations, like "+" or "/" operators
// the magic is here: 😱
print(f2(10, 2, operation: + ))
print(f2(10, 2, operation: * ))

//////////////////////////////////////////////////////
print("\n=== 3 ==================")

// we can assign closures to a variables!
var c3: (Int) -> Bool
c3 = { (vvv: Int) -> Bool in
    return vvv > 5
}

var c333: (Int) -> Bool
c333 = { vvv in
    return vvv > 5
}

// wow!
print(c3(100))
print(c333(2))

// we can provide closures as an function argument
// function filters an array by using result of the closure
func f3(_ source: [Int], condition: (Int) -> Bool) -> [Int] {
    var result: [Int] = []
    for element in source {
        if condition(element) { result.append(element) }
    }
    return result
}

// just a sample
let d3 = [2, 60, 10, 3, 8, 1]
print(f3(d3, condition: c3))

//////////////////////////////////////////////////////
print("\n=== 4 ==================")

// ok we have a "magic number" (5) within our closure
// lets add new argument to it
let c4: (Int, Int) -> Bool = { value, minimum in
    return value > minimum
}

// looks good 😎
print(c4(100, 5))
print(c4(2, 5))

// now, we have to rewrite our func to use new parameter (argument for closure)
func f4(_ source: [Int], _ value: Int, condition: (Int, Int) -> Bool) -> [Int] {
    var result: [Int] = []
    for element in source {
        if condition(element, value) { result.append(element) }
    }
    return result
}

// wow-wow! it works! 🤗
let d4 = [2, 60, 10, 3, 8, 1]
print(f4(d4, 9, condition: c4))

//////////////////////////////////////////////////////
print("\n=== 5 ==================")

// so, where is generics?
// we can refactor our function to use any type:
let c5: (Int, Int) -> Bool = { value, minimum in
    return value > minimum
}

func f5<T>(_ source: [T], _ minimum: T, condition: (T, T) -> Bool) -> [T] {
    var result: [T] = []
    for element in source {
        if condition(element, minimum) { result.append(element) }
    }
    return result
}

// incredibly! it works too! 😇
let d5 = [2, 60, 10, 3, 8, 1]
print(f5(d5, 5, condition: c5))

let c55: (String, String) -> Bool = { value, minimum in
    return value > minimum
}

let d55 = ["ab", "cd", "ef"]
print(f5(d55, "bb", condition: c55))


let w = [1, 4, 5, 6, 7, 8]
let wr = w.sorted(by: > )
wr




