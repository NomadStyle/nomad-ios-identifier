//
// Created by Dmitry Preobrazhenskiy on 07.01.2022.
//

import UIKit
import SwiftUI

struct MainView: UIViewControllerRepresentable {
    private let interactor = IdentifierInteractor()

    func makeUIViewController(context: Context) -> IdentifierViewController {
        let vc = IdentifierViewController(interactor: interactor)
        interactor.view = vc

        return vc
    }

    func updateUIViewController(
        _ uiViewController: IdentifierViewController,
        context: Context
    ) {
        // We dont need this at the moment
    }
}
