//
// Created by Dmitry Preobrazhenskiy on 07.01.2022.
//

public typealias IdentificationQueryCompletion = (Result<NomadIdentifier, NomadError>) -> Void

public class NomadIdentifierSDK {
    private let provider: IdentifierProvider

    public init() {
        // Can do DI in here
        provider = IdentifierProviderImpl()
    }

    public func queryForIdentifier(completion: IdentificationQueryCompletion) {
        let identifier = provider.provideIdentifier()

        // Here we can create errors if needed
        // let error = NomadError.undevelopedError
        let result: Result <NomadIdentifier, NomadError> = Result.success(identifier)

        completion(result)
    }
}
