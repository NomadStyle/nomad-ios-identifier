//
// Created by Dmitry Preobrazhenskiy on 07.01.2022.
//

import Foundation

protocol IdentifierProvider {
    func provideIdentifier() -> NomadIdentifier
}

class IdentifierProviderImpl: IdentifierProvider {
    func provideIdentifier() -> NomadIdentifier {
        fatalError("provideIdentifier() has not been implemented")
    }
}
