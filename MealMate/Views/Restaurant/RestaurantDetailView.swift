//
//  RestaurantDetailView.swift
//  MealMate
//
//  Created by HASSEN on 25/11/2022.
//

import SwiftUI

struct RestaurantDetailView: View {
    var detailView: RestaurantPostModel
    var body: some View {
        
        ScrollView {
            VStack(spacing: 15) {
                RestaurantImageSection()
                
                VStack(spacing: 30) {
                    RestaurantInformationSection(name: detailView.name, address: detailView.address, phone: detailView.phone, email: detailView.email, description: detailView.description, item: RestaurantPostModel(id: "", name: detailView.name, address: detailView.address, email: detailView.email, phone: detailView.phone, description: detailView.description))
                   
                }
                
            }
        }
        .navigationBarTitle(detailView.name, displayMode: .inline)
    }
}


