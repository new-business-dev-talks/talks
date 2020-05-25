import UIKit

public final class HeaderViewController: UIViewController {

    // MARK: - UI

    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Content"
        return view
    }()

    // MARK: - LIFE CYCLE

    public override func loadView() {
        view = UIView()
        view.backgroundColor = .systemRed

        view.addSubview(titleLabel)

        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
}
