/*:
 # Solução ao uso de Singleton 🦠: Injeção de Dependência 😷💉
*/

import Foundation

class User {
    var firstName = ""
}

class NetworkController {

    let user: User

    init(user: User) {
        self.user = user
    }

}

//: [Previous](@previous) | [Next](@next)
