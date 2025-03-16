//
//  CustomField.swift
//  M1_W3_D1
//
//  Created by Taibah Valley Academy on 3/16/25.
//

import SwiftUI

import SwiftUI

// CustomField - A reusable text input field with a label and a styled TextField
struct CustomField: View {
    var text: String // Label text for the input field
    
    var body: some View {
        VStack(alignment: .leading) { // Align contents to the left
            Text(text) // Display the label text above the input field
            
            TextField("", text: .constant("")) // Empty text field (currently non-editable)
                .padding(.vertical, 8) // Add padding to make it more spacious
                .background(Color(UIColor.systemGray6)) // Light gray background for better visibility
                .clipShape(Capsule(style: .continuous)) // Apply rounded edges for a modern look
        }
        .padding(.horizontal, 30) // Add horizontal padding for better spacing in UI
    }
}


