//
//  SwiftUIView.swift
//  MealMate
//
//  Created by HASSEN on 28/11/2022.
//

import SwiftUI

struct InputFieldDatePickerTitle: View {
    @Binding var date: Date
    
    var title: String
    var labelText: String
    
    var body: some View {
        Section(header: Text(title)) {
            DatePicker(labelText, selection: $date)
        }
    }
}
