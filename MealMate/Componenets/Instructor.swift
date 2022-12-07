//
//  instructor.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct Instructor: View {
    let image: String
    let name: String
    let BIO: String
    let background: Color
    var doesHaveANavigationLink: Bool?
    
    @State private var showInstructorProfile = false
    
    var body: some View {
        HStack(spacing: 0) {
            Image(image)
                .padding(.trailing, 15)
            
            textContent
            Spacer()
        }
        .padding(12)
        .background(background)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(name)
                .font(Font.subheadline.bold())
            
            Text(BIO)
                .font(Font.caption.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
        .padding(.trailing, 15)
    }
}

