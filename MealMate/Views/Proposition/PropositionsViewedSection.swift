//
//  PropositionsViewedSection.swift
//  MealMate
//
//  Created by HASSEN on 28/11/2022.
//

import SwiftUI

struct PropositionsViewedSection: View {
    @ObservedObject var viewModel = PropositionViewModel()
    var body: some View {
        VStack(spacing: 20) {
            PropostionListHeader(title: "Propostions",doesHaveAButton: true, buttonText: "Add Propostions")
                .frame(width: ScreenSize.screenWidth-32)
            Propositions
        }
    }

    var Propositions: some View {
       
        VStack(spacing: 15){
            
                List(viewModel.propostions, id: \.id ) { proposition in
                    PropositionViewedItem(propositionViewed: proposition)
                    
                }.onAppear(perform: viewModel.getAllPropostions)
              
            
        }.frame(width: 450, height: 500 )
        
        
    }
}
