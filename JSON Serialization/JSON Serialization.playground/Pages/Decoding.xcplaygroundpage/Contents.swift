//: *Aka Codable in Swift*
/*:
 ****

 ## Decoding

 - **Decodable** prepara o tipo para receber informação externa.
 - Também é possível decodificar tipos para todos os formatos: `JSON`, `XML` e `Plist`
 - Para `JSON` utiliza-se o `JSONDecoder`, exemplo:
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

// MARK: - Entrada

let json = """
{
    "id": 2,
    "name": "Tim Cook",
    "school": {
        "name": "Swift School"
    }
}
""".data(using: .utf8)!

// MARK: - Decoding

fileprivate let decoder = JSONDecoder()
fileprivate let studentFromJson = try decoder.decode(Student.self, from: json)

// MARK: - Resultado

print("Objeto estudante: \(studentFromJson)")
print("Nome estudante: \(studentFromJson.name)")
print("Escola do estudante: \(studentFromJson.school.name)")

//: [Previous](@previous) | [Next](@next)
