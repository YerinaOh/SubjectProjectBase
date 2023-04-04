//
//  ContentView.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DIContainer.shared.getBenefitView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
