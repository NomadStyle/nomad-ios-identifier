//
// Created by Dmitry Preobrazhenskiy on 07.01.2022.
//

import Foundation
import Core

protocol IdentifierInteractable {
    func updateIdentifier()
}

class IdentifierInteractor: IdentifierInteractable {
    let identifierSDK: NomadIdentifierSDK
    var view: IdentifierViewControllerPresentable?

    init() {
        self.identifierSDK = NomadIdentifierSDK()
    }

    func updateIdentifier() {
        identifierSDK.queryForIdentifier { result in
            switch result {
            case .success(let identifier):
                view?.updateIdentifier(identifier.value)
            case .failure(let error):
                print("Error while fetching the error: \(error.localizedDescription)")
            }
        }
    }
}
