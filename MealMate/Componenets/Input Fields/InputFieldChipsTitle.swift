//
//  InputFieldChipsTitle.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct InputFieldChipsTitle: View {
    let title: String
    let chipText: String
    
    var body: some View {
        Section(header: Text(title)) {
            VStack(alignment: .leading, spacing: 12) {
                firstRow
                secondRow
            }
            .listRowInsets(ListPadding.padding12)
        }
    }
    
var firstRow: some View {
        HStack(spacing: 12) {
          //  ForEach(ProfileInterests.allCases.dropLast(2)) { chipItem in
            //    Chip(title: chipItem.title, color: chipItem.color)
         //   }
        }
    }
    
    var secondRow: some View {
        HStack(spacing: 12) {
            //ForEach(ProfileInterests.allCases.dropFirst(4)) { chipItem in
             //   Chip(title: chipItem.title, color: chipItem.color)
           // }
        }
    }
}

