/*:

# Boas Práticas

*/
import Foundation
import XCTest

struct UsersViewModel {
    let users: [String]

    var hasUsers: Bool {
        return !users.isEmpty
    }
}

/// A test case to validate our logic inside the `UsersViewModel`.
final class UsersViewModelTests: XCTestCase {

    /// It should correctly reflect whether it has users.
    func testHasUsers() {
        let viewModel = UsersViewModel(users: ["Antoine", "Jaap", "Lady"])
        XCTAssertTrue(viewModel.hasUsers)
    }
}

/*:
 ## 1 - Setup and Teardown
    Parâmetros utilizados em múltiplos métodos podem ser definidos como propriedads da sua classe de teste. Use o setup para configurar o estado inicial para cada teste e o teardown para limpar. (Também pode se usar alguns asserts nestes métodos)
 
 
 ## 2 - Use bons nomes para sua classe de teste e funções, de preferência o mesmo usando o sufixo Tests para classe e o prefixo test para funções
 ```
    SelectPassengersViewController -> SelectPassengersViewControllerTests
    
    pickRightPassenger() -> testPickRightPassenger()
 
 ```
 
 
 ## 3 - Não use o XCTAssert para tudo
 */
     func testEmptyListOfUsers() {
         let viewModel = UsersViewModel(users: ["Ed", "Edd", "Eddy"])
         XCTAssert(viewModel.users.count == 0)
         XCTAssertTrue(viewModel.users.count == 0)
         XCTAssertEqual(viewModel.users.count, 0)
     }

/*:
![why](image3.png)
 */

/*:
 ## 4 - Desembrulhe os opcionais (Xcode 11)
   */

func testFirstNameNotEmpty() throws {
    let viewModel = UsersViewModel(users: ["Antoine", "Maaike", "Jaap"])

    let firstName =  try XCTUnwrap(viewModel.users.first)
    XCTAssertFalse(firstName.isEmpty)
    // Note: o XCTUnwrap evita que se use o XCTAssertNotNil + unwrap ou conditional chaining, pois se não for nil ele retorna o valor
}

/*:
## 5 - Throwing methods
  */
func testDecoding() throws {
    /// When the Data initializer is throwing an error, the test will fail.
    let jsonData = try Data(contentsOf: URL(string: "user.json")!)

    /// The `XCTAssertNoThrow` can be used to get extra context about the throw
    XCTAssertNoThrow(try JSONDecoder().decode(User.self, from: jsonData))
}


/*:
# Keep in mind 💡
*/

/*:
 * Sua aplicação é tão importante e tão boa quanto seu teste
 * 100% de cobertura não deve ser o seu objetivo, mas sim testar tudo o que realmente importa, começando pelas regras de negócio
 * Escreva um teste antes de corrigir um bug
 *
 */



/*:
****
[Previous](@previous) | [Next](@next)
*/
