import UIKit

public final class SampleMVCViewController: UIViewController {

    // MARK: - PRIVATE PROPERTIES

    private let cellId = "cellId"
    private var products : [Product]  = [Product]()

    // MARK: - UI

    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.register(ProductCell.self, forCellReuseIdentifier: cellId)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.dataSource = self
        return view
    }()

    // MARK: - LIFE CYCLE

    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sample MVC"
        constraintUI()
        addProducts()
    }

    // MARK: - PRIVATE FUNCTIONS

    private func addProducts() {
        products.append(Product(name: "iPhone SE", description: "É muito iPhone por menos."))
        products.append(Product(name: "iPhone 11", description: "Tudo. Na medida certa."))
        products.append(Product(name: "iPhone 11 Pro", description: "Assim nasce um Pro."))
        tableView.reloadData()
    }

    // MARK: SETUP

    private func constraintUI() {
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension SampleMVCViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? ProductCell else {
            return UITableViewCell()
        }
        let currentLastItem = products[indexPath.row]
        cell.delegate = self
        cell.product = currentLastItem
        return cell
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
}

extension SampleMVCViewController: ProductCellDelegate {
    func addToCart(_ productCell: ProductCell) {
        guard let product = productCell.product else { return }
        print("Add item to card: \(product.name)")
    }
}
