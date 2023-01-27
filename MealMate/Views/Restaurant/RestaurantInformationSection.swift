//
//  RestaurantInformationSection.swift
//  MealMate
//
//  Created by HASSEN on 25/11/2022.
//

import SwiftUI

struct RestaurantInformationSection: View {
    @State  var name :String
    @State  var address: String
    @State  var phone: String
    @State  var email: String
    @State  var description: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(name)
                .font(Font.title3.weight(.semibold))
            Divider()
            Text(address)
                .font(Font.subheadline.weight(.regular))
                .foregroundColor(Colors.secondary)
            Divider()
            Section(header: sectionHeader) {
                Text(description)
                    .font(Font.headline.weight(.regular))
                    .listRowInsets(ListPadding.padding10)
            }
        }
        .frame(width: ScreenSize.screenWidth-32)
    }

    
    
    
    var sectionHeader: some View {
        ListSectionHeader(title: "Descrption")
    }
}


