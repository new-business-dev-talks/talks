//: *Aka Codable in Swift*
/*:
 ****

 ## Date in Codable

 - Como comunicar datas com camadas externas?
 - Datas são compartilhadas como String
 - A comunicação é feita seguindo uma formatação previamente definido
 - Tanto **Encodable** quando **Decodable** usar .dateEncodingStrategy e .dateDecodingStrategy

 */
import UIKit

// MARK: - Tipos

fileprivate struct Student: Codable {
    var id: Int
    var name: String
    var dataNascimento: String
    var school: School
}

fileprivate struct School: Codable {
    var name: String
}

// MARK: - Extension para formatação

extension DateFormatter {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter
    }()
}

// MARK: - Instâncias

fileprivate let school = School(name: "Swift School")
fileprivate let student = Student(id: 1, name: "Steve Jobs", dataNascimento: "24-02-1955", school: school)

// MARK: - Encoding

fileprivate let encoder = JSONEncoder()
encoder.dateEncodingStrategy = .formatted(.dateFormatter)
fileprivate let data = try encoder.encode(student)

// MARK: - Resultado

fileprivate let dateData = try encoder.encode(student.dataNascimento)
fileprivate let date = student.dataNascimento

//: [Previous](@previous) | [Next](@next)
