//: *Aka Codable in Swift*
/*:
 ****

 ## JSON Hierarchy

- Também é possível alterar a hierarquia sem modificar o tipo

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

    enum CodingKeys: String, CodingKey {
        case name = "nome"
    }
}
/*:
 ### Encodable: com estrutura simples

 - Implementar o método `encode(to:)` com a estrutura
 - Exemplo de estrutura simples:
 */
//extension Student {
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//        try container.encode(id, forKey: .id)
//        try container.encode(school.name, forKey: .school)
//    }
//}
/*:
 ### Encodable: com estrutura aninhada

 - Implementar o método `encode(to:)` com a estrutura
 - Implementar o método nestedContainer(keyedBy:forKey:) na propriedade
 - Exemplo de estrutura aninhada:
 */
extension Student {
    enum ​SchoolKeys: String, CodingKey {
        case best = "melhores_escolas"
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(id, forKey: .id)

        var schoolContainer = container.nestedContainer(keyedBy: ​SchoolKeys.self, forKey: .school)
        try schoolContainer.encode(school, forKey: .best)
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
