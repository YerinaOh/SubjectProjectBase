//
//  BenefitHeaderView.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/05.
//

import SwiftUI
import Kingfisher

struct BenefitHeaderView: View {
    
    @Binding var benefit: Benefit
    
    var body: some View {
        HStack {
            Text(benefit.name ?? "-")
            Spacer()
        }
    }
}

struct BenefitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BenefitHeaderView(benefit: .constant(Benefit(id: 0, name: "-", description: "-", imageURL: "")))
    }
}
