/*:
 
 # Como configurar e começar?
 
 */

/*:
 ## Criando um projeto do 0
 
 ![Before](image1.png)
  */

/*:
 ## Criando testes em um projeto existente
 * Go to File -> New -> Target.
 * Select iOS Unit Testing Bundle.
 * Click Next
 
 ![After](image2.png)
  */

import XCTest

class ToBeTestedClassTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */

