/*:

 ## Exemplo 0

*/

import Foundation
import StoreKit

// Shared URL Session
let sharedURLSession = URLSession.shared

// Default File Manager
let defaultFileManager = FileManager.default

// Standard User Defaults
let standardUserDefaults = UserDefaults.standard

// Default Payment Queue
let defaultPaymentQueue = SKPaymentQueue.default()
/*:

 ## Exemplo 1

*/
class LocationManagerOne {
//MARK: - Location Permission
    func requestForLocation() {
        //Code Process
        print("Location granted 1")
    }
    
}
//Access the class
let location = LocationManagerOne() //initialization class
location.requestForLocation()    //Call function here


/*:

 ## Exemplo 2

*/

class LocationManagerTwo {
    
    static let shared = LocationManagerTwo()
    
    init(){}
    
    func requestForLocation(){
        //Code Process
        print("Location granted 2")
    }
    
}
// Access class function with Singleton Pattern 🚀
LocationManagerTwo.shared.requestForLocation()  //"Location granted"
// Still you can use your class like this
let locationTwo = LocationManagerTwo()
locationTwo.requestForLocation()

/*:

 ## Exemplo 3

*/


class LocationManagerThree {
    
    static let shared = LocationManagerThree()
    
    var locationGranted: Bool?
    //Initializer access level change now
    private init(){}
    
    func requestForLocation(){
        //Code Process
        locationGranted = true
        print("Location granted 3")
    }
    
}
//Access class function in a single line
LocationManagerThree.shared.requestForLocation()
print(LocationManagerThree.shared.locationGranted ?? false)

//: [Previous](@previous) | [Next](@next)
