import UIKit

public final class ContentViewController: UIViewController {

    // MARK: - UI

    private lazy var header: HeaderViewController = {
        let view = HeaderViewController()
        return view
    }()

    // MARK: - LIFE CYCLE

    public override func viewDidLoad() {
        super.viewDidLoad()
        constraintUI()
    }

    public override func loadView() {
        view = UIView()
        view.backgroundColor = .systemBackground
    }

    // MARK: - PRIVATE FUNCTIONS

    private func constraintUI() {
        installChild(header, withHeight: 300)
    }
}
