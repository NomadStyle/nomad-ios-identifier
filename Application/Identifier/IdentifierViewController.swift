//
// Created by Dmitry Preobrazhenskiy on 07.01.2022.
//

import UIKit
import EasyPeasy

protocol IdentifierViewControllerPresentable {
    func updateIdentifier(_ identifier: String)
}

class IdentifierViewController: UIViewController {
    private let interactor: IdentifierInteractable
    private lazy var _view = IdentifierView()

    init(interactor: IdentifierInteractable) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    override func loadView() {
        view = _view

        bindButtonAction(_view.button) { [weak self ] in
            self?.interactor.updateIdentifier()
        }
    }

    required init?(coder _: NSCoder) { fatalError("init(coder:) has not been implemented") }

    @objc private func updateIdentifier() {
        interactor.updateIdentifier()
    }
}

private final class IdentifierView: UIView {
    let container = UIStackView()
    let button = UIButton()
    let textView = UILabel()

    init() {
        super.init(frame: .zero)
        backgroundColor = .white

        addSubview(container)
        container.addArrangedSubview(textView)
        container.addArrangedSubview(button)

        container.axis = .vertical
        container.alignment = .center
        container.distribution = .fill
        container.spacing = 16
        container.easy.layout(Center())

        button.setTitleColor(.black, for: .normal)
        button.setTitle("Show device identifier", for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 8
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)

        textView.text = "Placeholder for identifier"
        textView.font = UIFont.systemFont(ofSize: 13)
    }

    func setActionCallback(callback: () -> Void, forButton: UIButton) {

    }

    required init?(coder _: NSCoder) { fatalError("init(coder:) has not been implemented") }
}

extension IdentifierViewController: IdentifierViewControllerPresentable {
    func updateIdentifier(_ identifier: String) {
        _view.textView.text = identifier
    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

extension UIViewController {
    func bindButtonAction(_ button: UIButton, action: @escaping () -> Void ) {
        let buttonAction = UIAction { _ in action() }
        button.addAction(buttonAction, for: .touchUpInside)
    }
}
