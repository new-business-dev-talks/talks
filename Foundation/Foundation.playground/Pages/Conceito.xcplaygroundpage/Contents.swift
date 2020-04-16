/*:

 # 1. Conceito

 */
//: > *Access essential data types, collections, and operating-system services to define the base layer of functionality for your app. - Apple®*

//: > *O framework Foundation é o pão com manteiga da caixa de ferramentas do desenvolvedor iOS. Ele fornece a classe raiz NSObject e um grande número de blocos de construção fundamentais para o desenvolvimento iOS, de classes a números e strings, de arrays a dicionários. - Pesquisa do Google®*



/*:
 ## Camadas da arquitetura iOS*

 ![arquitetura](figure-ios-architecture.jpg)

 * Camadas superiores mais abstratas.
 * Camadas inferiores mais fundamentais (intimamente ligadas ao hardware).
 * Camadas dos níveis superiores dependem das camadas dos níveis inferiores para algumas das suas funcionalidades
 * A Apple recomenda sempre que possível o uso dos frameworks de nível superior. 🤔 Why?

 */


import UIKit
import Foundation


/*:
 ## Classe raiz: NSObject
 A classe raiz da maioria das hierarquias de classe Objective-C, da qual as subclasses herdam uma interface básica para o runtime system e a capacidade de se comportar como objetos Objective-C

 */


@objcMembers class Product: NSObject {

    static func category() {

    }

    func images() {

    }
}


print(Product.classForCoder())
print(Product.superclass())

print(Product.conforms(to: NSObjectProtocol.self))
print(Product.conforms(to: NSCoding.self))

print(Product.responds(to: #selector(Product.category)))
print(Product.instancesRespond(to: #selector(Product.category)))

let product = Product()
print(product.responds(to: #selector(Product.category)))


/*:
 ****
 [Previous](@previous) | [Next](@next)
 */

