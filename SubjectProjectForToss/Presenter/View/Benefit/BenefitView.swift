//
//  BenefitView.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/05.
//

import SwiftUI

struct BenefitView: View {
    
    @StateObject var viewModel: BenefitViewModel
    
    var body: some View {

        BenefitHeaderView(benefit: $viewModel.benefits.first ?? .constant(Benefit()) )
    }
}

struct BenefitView_Previews: PreviewProvider {
    static var previews: some View {
        DIContainer.shared.getBenefitView()
    }
}
