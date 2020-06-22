//: *Aka Codable in Swift*
/*:
 ****

 ## Custom JSON Keys

 - As chaves dos campos devem estar corretas
 - CodingKeys especifica o nome da chave

 Exemplo:
 */

import UIKit

// MARK: - Tipos

fileprivate struct Student: Codable {
    var id: Int
    var name: String
    var school: School

    enum CodingKeys: String, CodingKey {
        case id
        case name = "nome"
        case school = "escola"
    }
}

fileprivate struct School: Codable {
    var name: String

    enum CodingKeys: String, CodingKey {
        case name = "nome"
    }
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
