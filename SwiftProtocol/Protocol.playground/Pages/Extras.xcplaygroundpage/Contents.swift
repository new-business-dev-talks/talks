/*:
 
 # Extras
 
 */

import UIKit

//: 🔶 Inicializadores:

protocol SomeProtocol {
    init(someParameter: Int)
}

class SomeClass: SomeProtocol {
    required init(someParameter: Int) {
        // initializer implementation goes here
    }
}

// O uso do required garante que você forneça uma implementação explícita em todas as subclasses da classe em conformidade com o protocolo. 

//: 🔶 Composição do protocolo

protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

typealias Info = Named & Aged


protocol Mothered {
    init(motherName: String, info: Info)
}

typealias CPF = Info & Mothered

struct OnlyInfo: Info {
    var name: String
    var age: Int
}

struct Person: CPF {
    var name: String
    var age: Int

    init(motherName: String, info: Info) {
        self.name = info.name
        self.age = info.age
        print(motherName)
    }
}

func wishHappyBirthday(to celebrator: Info) {
    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}

let birthdayPerson = Person(motherName: "Maria", info: OnlyInfo(name: "Malcolm", age: 21))
wishHappyBirthday(to: birthdayPerson)

// Não define um novo tipo de protocolo (exemplo typealias)

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
