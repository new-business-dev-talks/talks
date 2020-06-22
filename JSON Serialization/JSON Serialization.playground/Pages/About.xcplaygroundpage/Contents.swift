//: *Aka Codable in Swift*
/*:
 ****

 ## Sobre

 - `JSON Serialization` resolve a comunicação com camadas externas.
 - Formatar os dados tanto para **enviá-los** quanto para **recebê-los**.
 - Obj-C usa-se NSCoding.
 - Swift usa-se Encodable e Decodable ou Codable.

 ### Segundo a documentação:

 - **Encodable:** Um tipo que pode se **codificar para** uma representação externa.

 - **Decodable:** Um tipo que pode **decodificar a partir** de uma representação externa.

 - **Codable:** `Alias` que conforma com ambos os protocolos.

 ### Conformando ao protocolo

 - Todos as propriedades do tipo devem se conformar ao protocolo indicado
 - Muitos tipos dos frameworks nativos já conformam: String, Int
 - Quando um tipo, mesmo que customizado, não conforma ao protocolo temos esse erro:
 */

fileprivate struct Student: Codable {
    var id: Int
    var name: String
    var birthday: String
    var school: School
}

fileprivate struct School: Codable {
    var name: String

    enum CodingKeys: String, CodingKey {
        case name = "nome"
    }
}
//: [Previous](@previous) | [Next](@next)
