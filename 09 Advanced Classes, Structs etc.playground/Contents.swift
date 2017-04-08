import Foundation
/*
/*
/// subsript

print("=== 1 ==================")
let tt = [1,2,3,4]
tt[3]

struct S1 {
    var a: Int

    subscript(index: Int) -> Int {
        return a * index
    }
}

let v1 = S1(a: 5)
print(v1[10])

print("\n=== 2 ==================")

struct S2<T> {

    private var a: [T] = []

    subscript (index: Int) -> T {

        //return a[index]

        get {
            return a[index]
        }
        /*set(value) {
            a[index] = value
        }*/
        
        set {
            a[index] = newValue
        }
        
    }

    init(values: [T]) {
        a = values
    }

}

//var v2: S2<Int> = S2<Int>(values: Array<Int>([1,3,5,7,11]))
var v2 = S2<Int>(values: [1,3,5,7,11])
type(of: v2)
print(v2[0])
print(v2[2])
v2[2] = 13
print(v2[2])
print(v2)
*/
print("\n=== 3 ==================")

struct S3 {
    var a: String
    subscript(search: String) -> Bool {
        return a.range(of: search) != nil
    }
}

let v3 = S3(a: "abcdefg")
print(v3["cd"])
print(v3["ce"])
*/
/*
print("\n=== 4 ==================")

struct S4 {
    var a: [Int]
    subscript(search: Int, replace: Int) -> S4 {
        get {
            var res = self
            for i in 0..<res.a.count {
                if res.a[i] == search {
                    res.a[i] = replace
                }
            }
            return res
        }
        /*mutating get {
            for i in 0..<a.count {
                if a[i] == search {
                    a[i] = replace
                }
            }
            return self
        }*/
    }

//    subscript(search: Int, replace: Int) -> S4 {
//        let res = a.map(
//            { (item: Int) -> Int in
//                return item == search ? replace : item
//            }
//        )
//        return S4(a: res)
//
//        //return S4(a: a.map { return $0 == search ? replace : $0 } )
//    }
}
var v4 = S4(a: [1,2,3,2,3,4,3,4,5])
print("v4 ", v4.a)
let v41: S4 = v4[3,100]
print("v41 ", v41.a)
print("v4 ", v4.a)
 */

print("\n=== 5 ==================")
var v5: Dictionary<String, Int> = ["addidas": 12, "puma": 23, "nike": 34]
print(v5["puma"] ?? "nil!")

print("\n=== 6 ==================")

struct S6 {
    var keys: [String]
    var values: [Int]

//    subscript (key: String) -> Int {
//        let index = keys.index(of: key)
//        assert(index != nil, "Index does not exists!!")
//        return values[index!]
//    }

    subscript (key: String) -> Int? {
        if let index = keys.index(of: key) {
            return values[index]
        }
        return nil
    }

}

var v6 = S6(keys: ["addidas", "puma", "nike"], values: [12, 23, 34])
print(v6["nike"] ?? "nil")
//v6["nike"] = 567


print("\n=== 7 ==================")

struct S7 {
    var keys: [String]
    var values: [Int]

    //subscript (key: Int) -> Int? { return nil }
    subscript (key: String) -> Int? {
        get {
            if let index = keys.index(of: key) {
                return values[index]
            }
                return nil
        }
        set {
            if let value = newValue {
                if let index = keys.index(of: key) {
                    values[index] = value
                } else {
                    keys.append(key)
                    values.append(value)
                }
            } else {
                if let index = keys.index(of: key) {
                    keys.remove(at: index)
                    values.remove(at: index)
                }
            }
        }
    }
}

var v7 = S7(keys: ["addidas", "puma", "nike"], values: [12, 23, 34])
print(v7["puma"] ?? "nil")
print(v7)
v7["puma"] = 2222
print(v7["puma"] ?? "nil")
print(v7)
