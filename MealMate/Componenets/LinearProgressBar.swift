//
//  LinearProgressBar.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct LinearProgressBar: View {
    let progress: CGFloat
    var color: Color?
    
    var body: some View {
        ProgressView(value: progress, total: 100.0)
            
    }
}
