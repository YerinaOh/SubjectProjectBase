//
//  DIContainer.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/05.
//

import Foundation

class DIContainer {
    static let shared: DIContainer = DIContainer()
    
    func getBenefitView() -> BenefitView {
        let repository = BenefitRepository()
        let benefitUseCase = BenefitUseCase(repository: repository)
        let viewModel = BenefitViewModel(useCase: benefitUseCase)
        return BenefitView(viewModel: viewModel)
    }
}
