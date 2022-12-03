//
//  RatingProgress.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct RatingProgress: View {
    let numberOfStars: Int
    let numberOfReviews: String
    let progressValue: CGFloat
    
    var body: some View {
        HStack(spacing: 10) {
            rating
            progress
            
            Text(numberOfReviews)
                .font(Font.caption2.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
    
    var rating: some View {
        HStack(spacing: 2) {
            ForEach(numberOfStars ..< 6) { numberOfStars in
                Image(systemName: Icons.star)
                    .font(Font.system(size: 9).weight(.semibold))
                    .foregroundColor(Colors.tertiary)
            }
        }
        .frame(width: 68, alignment: .trailing)
    }
    
    var progress: some View {
        LinearProgressBar(progress: progressValue)
    }
}


