//
// Created by Dmitry Preobrazhenskiy on 07.01.2022.
//

import UIKit

protocol IdentifierViewControllerPresentable {
    func updateIdentifier(_ identifier: String)
}

class IdentifierViewController: UIViewController {
    private let interactor: IdentifierInteractable

    init(interactor: IdentifierInteractable) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder _: NSCoder) { fatalError("init(coder:) has not been implemented") }
}

extension IdentifierViewController: IdentifierViewControllerPresentable {
    func updateIdentifier(_ identifier: String) {

    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        interactor.updateIdentifier()
    }
}
