import UIKit

public extension UIViewController {
    func installChild(_ child: UIViewController, withHeight height: CGFloat? = nil) {
        addChild(child)

        child.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(child.view)

        NSLayoutConstraint.activate([
            child.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            child.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            child.view.topAnchor.constraint(equalTo: view.topAnchor),
        ])

        if let height = height {
            child.view.heightAnchor.constraint(equalToConstant: height).isActive = true
        } else {
            child.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }

        child.didMove(toParent: self)
    }
}
