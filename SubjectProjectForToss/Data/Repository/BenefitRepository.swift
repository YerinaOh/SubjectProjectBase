//
//  BenefitRepository.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/05.
//

import Foundation
import Combine
import CombineMoya
import Moya

final class BenefitRepository: BenefitRepos {
    
    let provider: MoyaProvider<BenefitAPI>
    
    init(provider: MoyaProvider<BenefitAPI> = MoyaProvider<BenefitAPI>()) {
        self.provider = provider
    }
    
    func getBeerList(page: Int) -> AnyPublisher<[Benefit], NetworkingError> {
        self.provider.requestPublisher(.getBenefitList(page: page))
            .filterSuccessfulStatusCodes()
            .map([Benefit].self)
            .removeDuplicates()
            .mapError { NetworkingError.error($0.localizedDescription) }
            .eraseToAnyPublisher()
    }
}
