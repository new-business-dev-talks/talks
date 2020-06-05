import UIKit

public final class ContainerViewController: UIViewController {

    // MARK: - PUBLIC API

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

    // MARK: - LIFE CYCLE

    public override func loadView() {
        view = UIView()
        title = "Container"
        applyState()
    }

    // MARK: - PRIVATE PROPERTIES

    private var contentController: UIViewController? {
        didSet {
            guard contentController != oldValue else { return }
            swapContent(newValue: contentController, oldValue: oldValue)
        }
    }

    // MARK: - PRIVATE FUNCTIONS

    private func applyState() {
        contentController = viewController(for: state)
    }

    private func viewController(for state: State) -> UIViewController {
        switch state {
        case .loading(let message):
            return LoadingViewController(message: message, showSpinner: true)
        case .empty(let message), .error(let message):
            return LoadingViewController(message: message, showSpinner: false)
        case .content(let controller):
            return controller
        }
    }

    private func swapContent(newValue: UIViewController?, oldValue: UIViewController?) {
        oldValue?.view.removeFromSuperview()
        oldValue?.removeFromParent()
        oldValue?.didMove(toParent: nil)

        guard let controller = newValue else { return }
        installChild(controller)
    }
}
