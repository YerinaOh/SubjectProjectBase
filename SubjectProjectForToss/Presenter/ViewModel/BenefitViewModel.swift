//
//  BenefitViewModel.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/05.
//

import Foundation

class BenefitViewModel: ObservableObject {
    var useCase: BenefitUseCase
    
    @Published var benefits: [Benefit] = []
    
    init(useCase: BenefitUseCase) {
        self.useCase = useCase
    }
    
    
}
