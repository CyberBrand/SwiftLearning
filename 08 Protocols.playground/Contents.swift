import Foundation

//@discardableResult
//func qwe() -> Int { return 111 }
//qwe()

@objc protocol Desribable {
    func describe()
    @objc optional func qqq()
}

class A: Desribable {

    func describe() {
        print("Yo!")
    }
    
}

let a = A()

protocol HasValue: class {
    //var value: Int { get }
    var value: Int { get set }
}

class B: A, HasValue {
    var value: Int
    init(value: Int) { self.value = value }
}

let b = B(value: 123)
b.value
b.value = 234
b.value

func f(_ obj: HasValue?) {
    obj?.value = 345
}

func f2(_ obj: HasValue & Desribable) {
    obj.value = 456
    print(obj.value)
    obj.describe()
}
f2(b)
// f2(a) // error
