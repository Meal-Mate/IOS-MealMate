//
//  ProfileQuickActionItem.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct ProfileQuickActionItem: View {
    var profileQuickAction: ProfileQuickAction
    
    var body: some View {
        TextIcon(
            title:
                profileQuickAction.title,
            textColor:
                Colors.blue,
            fontSize:
                Font.headline.weight(.regular)
        )
    }
}


