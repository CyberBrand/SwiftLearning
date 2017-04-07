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
v1.asStringVar
v1.asStringFunc()

/*
var v1 = "ab🤓cdef"
//v1[0]

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

v1
v1[2]
v1[2] = "😎"
v1[2]
v1

/////////////////////
var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")
// Prints "the number of characters in cafe is 4"

word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.characters.count)")
// Prints "the number of characters in café is 4"
/////////////////////

*/


