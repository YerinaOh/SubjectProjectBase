//
//  BenefitRepos.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/05.
//

import Foundation
import Combine

protocol BenefitRepos {
    func getBeerList(page: Int) -> AnyPublisher<[Benefit], NetworkingError>
}
