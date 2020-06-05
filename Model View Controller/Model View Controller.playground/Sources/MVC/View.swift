import UIKit

protocol ProductCellDelegate {
    func addToCart(_ productCell: ProductCell)
}

public final class ProductCell: UITableViewCell {

    // MARK: - PUBLIC API

    var delegate: ProductCellDelegate?

    var product: Product? {
        didSet {
            nameLabel.text = product?.name
            descriptionLabel.text = product?.description
        }
    }

    // MARK: - UI

    private lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.boldSystemFont(ofSize: 16)
        view.textColor = .black
        return view
    }()

    private lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.systemFont(ofSize: 12)
        view.textColor = .black
        view.numberOfLines = 0
        return view
    }()

    private lazy var addToCartButton: UIButton = {
        let view = UIButton(type: .custom)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(itemTapped), for: .touchUpInside)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("+", for: .normal)
        return view
    }()

    // MARK: - INITIALIZERS

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        constraintUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - PRIVATE FUNCTIONS

    private func constraintUI() {
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(addToCartButton)

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            nameLabel.trailingAnchor.constraint(equalTo: addToCartButton.leadingAnchor, constant: -8),

            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: addToCartButton.leadingAnchor, constant: -8),

            addToCartButton.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 4),
            addToCartButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            addToCartButton.heightAnchor.constraint(equalToConstant: 30),
            addToCartButton.widthAnchor.constraint(equalToConstant: 30)
        ])
    }

    // MARK: - SELECTORS

    @objc func itemTapped() {
        delegate?.addToCart(self)
    }
}
