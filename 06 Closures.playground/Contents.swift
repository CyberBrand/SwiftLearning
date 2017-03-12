import Foundation

//////////////////////////////////////////////////////
print("\n=== 1 ==================")
func f1_add(_ v1: Int, _ v2: Int) -> Int {
    return v1 + v2
}

func f1_mul(_ v1: Int, _ v2: Int) -> Int {
    return v1 * v2
}

print(f1_add(10, 2))
print(f1_mul(10, 2))

//////////////////////////////////////////////////////
print("\n=== 2 ==================")

func f2(_ v1: Int, _ v2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(v1, v2)
}

let v2_1 = f2(10, 2, operation: f1_add)
let v2_2 = f2(10, 2, operation: f1_mul)
print(v2_1)
print(v2_2)

print(f2(10, 2, operation: +))
print(f2(10, 2, operation: /))

//////////////////////////////////////////////////////
print("\n=== 3 ==================")

let c3: (Int) -> Bool = { value in
    return value > 5
}

print(c3(100))
print(c3(2))

func f3(_ source: [Int], condition: (Int) -> Bool) -> [Int] {
    var result: [Int] = []
    for element in source {
        if condition(element) { result.append(element) }
    }
    return result
}

let d3 = [2, 60, 10, 3, 8, 1]
print(f3(d3, condition: c3))

//////////////////////////////////////////////////////
print("\n=== 4 ==================")

let c4: (Int, Int) -> Bool = { value, minimum in
    return value > minimum
}

print(c4(100, 5))
print(c4(2, 5))

func f4(_ source: [Int], _ minimum: Int, condition: (Int, Int) -> Bool) -> [Int] {
    var result: [Int] = []
    for element in source {
        if condition(element, minimum) { result.append(element) }
    }
    return result
}

let d4 = [2, 60, 10, 3, 8, 1]
print(f4(d4, 5, condition: c4))

//////////////////////////////////////////////////////
print("\n=== 5 ==================")

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

let d5 = [2, 60, 10, 3, 8, 1]
print(f5(d5, 5, condition: c5))

