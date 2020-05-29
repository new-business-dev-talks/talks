//: *MVC: Many ViewControllers 🙊*
/*:
 ****

 ##### A solução

 - Foco no C do MVC
 - Componentizar cada tela
 - Separar responsabilidades
 - Tirar a concentração da mesma Controller
 - Com a componentização da tela ganhamos todo ciclo de vida
 */
/*:
 ****
 ###### Solução comum
 */

import UIKit

public extension UIViewController {
    func install(_ child: UIViewController) {
        addChild(child)

        child.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(child.view)

        NSLayoutConstraint.activate([
            child.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            child.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            child.view.topAnchor.constraint(equalTo: view.topAnchor),
            child.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        child.didMove(toParent: self)
    }
}
/*:
 ****
 ###### Solução apriomorada
 - Utilizar *Container*
 */

public final class ViewController: UIViewController {
    public enum State {
        case loading(message: String)
        case content(controller: UIViewController)
        case error(message: String)
        case empty(message: String)
    }

    public var state: State = .loading(message: "Loading") {
        didSet {
            applyState()
        }
    }

    private func applyState() { }

    // ...
}

//: [Previous](@previous) | [Next](@next)
