//___FILEHEADER___

import UIKit

#if canImport(SwiftUI)
import SwiftUI
@available(iOS 13.0, *)
struct ___FILEBASENAME____Preview: PreviewProvider {
    static var vc: ___FILEBASENAME___ = ___FILEBASENAME___()
    static var previews: some SwiftUI.View {
        vc.previewGroups()
    }
}
#endif


final class ___FILEBASENAME___: BaseViewController {

    // UI element

    // property
    private let viewModel: ___FILEBASENAME___ViewModel

    // Life cycle
    init(viewModel: ___FILEBASENAME___ViewModel = ___FILEBASENAME___ViewModel()) {
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