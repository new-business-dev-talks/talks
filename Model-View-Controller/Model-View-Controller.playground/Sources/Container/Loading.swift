import UIKit

public final class LoadingViewController: UIViewController {

    // MARK: - INITIALIZERS

    public init(message: String = "", showSpinner: Bool) {
        super.init(nibName: nil, bundle: nil)

        label.text = message
        spinner.isHidden = !showSpinner
    }

    public required init?(coder: NSCoder) {
        fatalError()
    }

    // MARK: - UI

    private lazy var spinner: UIActivityIndicatorView = {
        UIActivityIndicatorView(style: .medium)
    }()

    private lazy var label: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        view.textAlignment = .center
        return view
    }()

    private lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [spinner, label])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        view.axis = .vertical
        view.spacing = 2
        return view
    }()

    // MARK: - LIFE CYCLE

    public override func loadView() {
        view = UIView()
        view.backgroundColor = .systemBackground

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if !spinner.isHidden { spinner.startAnimating() }
    }

    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if !spinner.isHidden { spinner.stopAnimating() }
    }
}
