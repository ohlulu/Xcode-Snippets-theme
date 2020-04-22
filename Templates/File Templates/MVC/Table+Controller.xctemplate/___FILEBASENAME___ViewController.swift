//___FILEHEADER___

import UIKit

final class ___FILEBASENAME___: BaseViewController {

    // UI element
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        table.backgroundColor = .white
        table.separatorStyle = .none
        table.dataSource = self
        table.delegate = self
        table.register(cellWithClass: <#Cell#>.self)
        return table
    }()

    // property

    // Life cycle
    override init() {
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - User action

private extension ___FILEBASENAME___ {

}

// MARK: - Getter

private extension ___FILEBASENAME___ {

}

// MARK: - UITableViewDelegate

extension ___FILEBASENAME___: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - UITableViewDataSource

extension ___FILEBASENAME___: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withClass: <#Cell#>.self, for: indexPath)
        return cell
    }
}

// MARK: - Setup UI methods

private extension ___FILEBASENAME___ {

    func setupUI() {

        navigationItem.title = ""
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.top.right.left.bottom.equalToSuperview()
        }
    }
}
