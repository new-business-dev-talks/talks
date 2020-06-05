import UIKit

public final class FlowController: UIViewController {

    // MARK: - LIFE CYCLE

    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "FlowController"
        installChild(flowNavigationController)
        makeContent()
    }

    // MARK: - PROPERTIES

    private lazy var flowNavigationController: UINavigationController = {
        UINavigationController(rootViewController: self.containerViewController)
    }()

    private lazy var containerViewController: ContainerViewController = {
        let container = ContainerViewController()
        return container
    }()

    private lazy var contentViewController: ContentViewController = {
        let view = ContentViewController()
        return view
    }()

    // MARK: - FLOW

    private func makeContent() {
        containerViewController.state = .loading(message: "Loading content")

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.containerViewController.state = .content(controller: self.contentViewController)
        }
    }
}
