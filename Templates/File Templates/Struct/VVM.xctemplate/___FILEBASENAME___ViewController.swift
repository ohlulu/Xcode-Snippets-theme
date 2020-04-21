//___FILEHEADER___

import UIKit

final class ___FILEBASENAME___: BaseViewController {

    // UI element

    // property
    private let viewModel: ___FILEBASENAME___ViewModel

    // Life cycle
    init(viewModel: ___FILEBASENAME___ViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        actionStream()
        observerStream()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Action Stream

private extension ___FILEBASENAME___ {
    
    func actionStream() {
        
    }
}

// MARK: - Observer Stream

private extension ___FILEBASENAME___ {
    
    func observerStream() {
        
    }
}

// MARK: - Helper

private extension ___FILEBASENAME___ {

}

// MARK: - Setup UI methods

private extension ___FILEBASENAME___ {

    func setupUI() {
        navigationItem.title = ""
    }
}