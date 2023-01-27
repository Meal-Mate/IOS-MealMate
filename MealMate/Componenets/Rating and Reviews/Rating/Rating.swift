//
//  Rating.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct Rating: View {
    var numberOfStars: Int
    
    @State private var maximumNumberOfStars = 5

    var body: some View {
        HStack(spacing: 2) {
            ForEach(1 ..< maximumNumberOfStars + 1) { numberOfStars in
                Image(systemName: Icons.star)
                    .font(Font.caption.bold())
                    .foregroundColor(numberOfStars <= self.numberOfStars ? Colors.blue : Colors.tertiary)
            }
        }
    }
}
