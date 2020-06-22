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
 ### Decodable: com estrutura simples

 - Aplicar as mudanças no construtor `init(from:)`
 - Exemplo de estrutura simples:
 */
//let json = """
//{
//    "id": 2,
//    "name": "Tim Cook",
//    "school": "Swift School"
//}
//""".data(using: .utf8)!

//extension Student {
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        name = try container.decode(String.self, forKey: .name)
//        id = try container.decode(Int.self, forKey: .id)
//
//        let schoolName = try container.decode(String.self, forKey: .school)
//        school = School(name: schoolName)
//    }
//}
/*:
 ### Decodable: com estrutura aninhada

 - Aplicar as mudanças no construtor `init(from:)`
 - Implementar o método nestedContainer(keyedBy:forKey:) na propriedade
 - Exemplo de estrutura aninhada:
 */
let json = """
{
    "name": "Steve Jobs",
    "id": 1,
    "school": {
        "melhores_escolas": {
            "nome": "Swift School"
        }
    }
}
""".data(using: .utf8)!

extension Student {

    enum ​SchoolKeys: String, CodingKey {
        case best = "melhores_escolas"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)

        let schoolContainer = try container.nestedContainer(keyedBy: ​SchoolKeys.self, forKey: .school)
        school = try schoolContainer.decode(School.self, forKey: .best)
    }
}

// MARK: - Decoding

fileprivate let decoder = JSONDecoder()
fileprivate let studentFromJson = try decoder.decode(Student.self, from: json)

// MARK: - Resultado

print("Objeto estudante: \(studentFromJson)")
print("Nome estudante: \(studentFromJson.name)")
print("Escola do estudante: \(studentFromJson.school.name)")


//: [Previous](@previous) | [Next](@next)
