import Foundation

// MARK: - TIPOS

struct Student: Codable {
    var id: Int
    var name: String
    var birthday: String
    var school: School

    enum CodingKeys: String, CodingKey {
        case id
        case name = "nome"
        case birthday = "data_nascimento"
        case school = "escola"
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(id, forKey: .id)
        try container.encode(birthday, forKey: .birthday)
        try container.encode(school, forKey: .school)
    }
}

extension Student {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        birthday = try container.decode(String.self, forKey: .birthday)
        school = try container.decode(School.self, forKey: .school)
    }
}

struct School: Codable {
    var name: String

    enum CodingKeys: String, CodingKey {
        case name = "nome"
    }
}

// MARK: MODELOS

let school = School(name: "Swift School")
let student = Student(id: 1, name: "Steve Jobs", birthday: "24-02-1955", school: school)

// MARK: ENCODING

//let encoder = JSONEncoder()
//let data = try encoder.encode(student)
//print(String(data: data, encoding: .utf8)!)

// MARK: DECODING

//let decoder = JSONDecoder()
//let json = """
//{
//    "id": 1,
//    "nome": "Tim Cook",
//    "escola": {
//        "nome": "Swift School"
//    }
//}
//""".data(using: .utf8)!
//let studentFromJson = try decoder.decode(Student.self, from: json)
//print("Objeto estudante: \(studentFromJson)")
//print("Nome estudante: \(studentFromJson.name)")
//print("Escola do estudante: \(studentFromJson.school.name)")

// MARK: DECODING COM ESTRUTURA MODIFICADA

//let decoder = JSONDecoder()
//let json = """
//{
//    "id": 1,
//    "nome": "Steve Jobs",
//    "escola": "Swift School"
//}
//""".data(using: .utf8)!
//let studentFromJson = try decoder.decode(Student.self, from: json)
//print("Objeto estudante: \(studentFromJson)")
//print("Nome estudante: \(studentFromJson.name)")
//print("Escola do estudante: \(studentFromJson.school.name)")

extension DateFormatter {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter
    }()
}

let encoder = JSONEncoder()
encoder.dateEncodingStrategy = .formatted(.dateFormatter)

let dateData = try encoder.encode(student.birthday)
let date = student.birthday
print(String(data: dateData, encoding: .utf8)!)























// MARK: - 1. Apresentação

//struct Employee: Codable {
//    var name: String
//    var id: Int
//    var favoriteToy: Toy
//}
//
//struct Toy {
//    var name: String
//}

// MARK: - 2. Encoding

//struct Student: Codable {
//    var id: Int
//    var name: String
//    var school: School
//}
//
//struct School: Codable {
//    var id: Int
//    var name: String
//}
//
//let school = School(id: 1, name: "Swift School")
//let student = Student(id: 1, name: "Steve Jobs", school: school)
//
//let encoder = JSONEncoder()
//let data = try encoder.encode(student)

//print(String(data: data, encoding: .utf8)!)

// MARK: - 3. Decoding

//let json = """
//{
//    "id": 1,
//    "nome": "Tim Cook",
//    "escola": {
//        "id": 1,
//        "nome": "Swift School"
//    }
//}
//""".data(using: .utf8)!
//
//let decoder = JSONDecoder()
//let studentFromJson = try decoder.decode(Student.self, from: json)

//print("Objeto estudante: \(studentFromJson)")
//print("Nome estudante: \(studentFromJson.name)")
//print("Escola do estudante: \(studentFromJson.school.name)")

// MARK: - 4. Custom JSON Keys

//encoder.keyEncodingStrategy = .convertToSnakeCase
//
//extension Student {
//    enum CodingKeys: String, CodingKey {
//        case id
//        case name = "nome"
//        case school = "escola"
//    }
//}
//
//extension School {
//    enum CodingKeys: String, CodingKey {
//        case id
//        case name = "nome"
//    }
//}

// MARK: - 5. Modificando hierarquia JSON

// MARK: Encodable Simples

//extension Student {
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//        try container.encode(id, forKey: .id)
//        try container.encode(school.id, forKey: .school)
//        try container.encode(school.name, forKey: .school)
//    }
//}

// MARK: Encodable Aninhada

//extension Student {
//
//    enum ​SchoolKeys: String, CodingKey {
//        case best = "melhores_escolas"
//    }
//
//    func encode(to encoder: Encoder) throws {
//        ...
//        var schoolContainer = container.nestedContainer(keyedBy: ​SchoolKeys.self, forKey: .school)
//        try schoolContainer.encode(school, forKey: .best)
//    }
//}

// MARK: Decodable Simples

//extension Student {
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        name = try container.decode(String.self, forKey: .name)
//        id = try container.decode(Int.self, forKey: .id)
//        let schoolName = try container.decode(String.self, forKey: .school)
//        school = School(name: schoolName)
//    }
//}

// MARK: Decodable Aninhada

//extension Student {
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        id = try container.decode(Int.self, forKey: .id)
//        name = try container.decode(String.self, forKey: .name)
//
//        let schoolContainer = try container.nestedContainer(keyedBy: ​SchoolKeys.self, forKey: .school)
//        school = try schoolContainer.decode(School.self, forKey: .best)
//    }
//}
