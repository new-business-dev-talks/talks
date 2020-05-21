/*:
 # Delegate
 > A delegate is an object that acts on behalf of, or in coordination with, another object when that object encounters an event in a program. - Apple 🍎
 */
/*:
 ### Como é utilizado?
 *Protocolo*
 */
import UIKit

protocol CallBackDelegate {
    func somethingHappen()
}

class FirstClass {
    var delegate: CallBackDelegate?

    func doSomething() {
        delegate?.somethingHappen()
    }
}

class SecondClass: CallBackDelegate {
    func somethingHappen() {
        print("Something happended callback called")
    }
}

let firstObject = FirstClass()
let secondObject = SecondClass()

firstObject.delegate = secondObject
firstObject.doSomething()

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
