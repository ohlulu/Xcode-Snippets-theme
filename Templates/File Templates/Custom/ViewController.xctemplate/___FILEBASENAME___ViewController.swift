//___FILEHEADER___

import UIKit
import SwiftUI

@available(iOS 13.0, *)
struct ___FILEBASENAME____Preview: PreviewProvider {
    static var vc: ___FILEBASENAME___ = ___FILEBASENAME___()
    static var previews: some SwiftUI.View {
        vc.previewGroups()
    }
}

final class ___FILEBASENAME___: BaseViewController {

    // UI element

    // property
    private let viewModel: <#BaseViewModel#>

    // Life cycle
    init(viewModel: <#BaseViewModel#> = ) {
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