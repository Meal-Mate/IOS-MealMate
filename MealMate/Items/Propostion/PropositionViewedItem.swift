//
//  PropositionViewedItem.swift
//  MealMate
//
//  Created by HASSEN on 28/11/2022.
//

import SwiftUI

struct PropositionViewedItem: View {
    var propositionViewed: PropositionPostModel
  
    var body: some View {
        ImageTextButtonDate(
            image:
                Images.searchRecentlyViewed1,
            name:
                propositionViewed.mates,
            address:
                propositionViewed.owner,
            buttonText: ""
            
                    
        )
        .frame(width: ScreenSize.screenWidth-32)
        .onTapGesture {
            let defaults = UserDefaults.standard
            defaults.set(propositionViewed.id,forKey: "id")
        }
    }
}
