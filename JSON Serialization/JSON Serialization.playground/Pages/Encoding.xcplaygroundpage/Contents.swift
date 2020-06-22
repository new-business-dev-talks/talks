//: *Aka Codable in Swift*
/*:
 ****

 ## Encoding

 - **Encodable** permite o tipo ser enviado à uma camada externa do aplicativo
 - É possível codificar tipos para diversos formatos: `JSON`, `XML` e `Plist`
 - Para `JSON` utiliza-se o `JSONEncoder`, exemplo:
 */

import UIKit

// MARK: - Tipos

fileprivate struct Student: Codable {
    var id: Int
    var name: String
    var school: School
}

fileprivate struct School: Codable {
    var name: String
}

// MARK: - Instâncias

fileprivate let school = School(name: "Swift School")
fileprivate let student = Student(id: 1, name: "Steve Jobs", school: school)

// MARK: - Encoding

fileprivate let encoder = JSONEncoder()
fileprivate let data = try encoder.encode(student)

// MARK: - Resultado

print(String(data: data, encoding: .utf8)!)

//: [Previous](@previous) | [Next](@next)
