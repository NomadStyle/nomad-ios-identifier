//
// Created by Dmitry Preobrazhenskiy on 07.01.2022.
//

import Foundation

enum Constants {
    static let suitName = "group.nomadstyle"
    static let identifierKey = "identifier"
}

protocol IdentifierProvider {
    func provideIdentifier() -> NomadIdentifier
}

class IdentifierProviderImpl: IdentifierProvider {
    let storage = UserDefaults(suiteName: Constants.suitName)

    func provideIdentifier() -> NomadIdentifier {
        if let identifier = storage?.object(forKey: Constants.identifierKey) as? String {
            return NomadIdentifier(value: identifier)
        } else {
            /// This is the place to expand the digital fingerprint to location/ip checks and use persistence
            let uuid = UUID()
            storage?.setValue(uuid.uuidString, forKey: Constants.identifierKey)

            return NomadIdentifier(
                value: uuid.uuidString
            )
        }
    }
}
