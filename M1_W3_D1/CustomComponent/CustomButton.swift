//
//  CustomButton.swift
//  M1_W3_D1
//
//  Created by Taibah Valley Academy on 3/16/25.
//

import SwiftUI

import SwiftUI

// Custom Button with a Filled Background (Solid Green)
public struct CustomButtonFill<Destination: View>: View {
    
    var name: String // The text displayed on the button
    var destination: Destination // The view that the button navigates to

    public var body: some View {
        // NavigationLink for navigation to the destination view
        NavigationLink(destination: destination) {
            Text(name) // Display button text
        }
        .padding(.vertical, 8) // Add vertical padding for better spacing
        .frame(width: 300) // Set a fixed button width
        .background(.green) // Set the background color to green
        .foregroundColor(.white) // Set the text color to white
        .cornerRadius(50) // Round the corners for a smooth button look
    }
}

//  Custom Button with an Outlined Border (Green Stroke)
public struct CustomButtonBorder<Destination: View>: View {
    
    var name: String // The text displayed on the button
    var destination: Destination? // Optional navigation destination

    public var body: some View {
        // NavigationLink for navigation to the destination view
        NavigationLink(destination: destination) {
            Text(name) // Display button text
        }
        .padding(.vertical, 8) // Add vertical padding for better spacing
        .frame(width: 300) // Set a fixed button width
        .background(
            RoundedRectangle(
                cornerRadius: 50, // Rounded corners for smooth look
                style: .continuous
            )
            .stroke(.green, lineWidth: 2) // Apply a green border with a width of 2
        )
        .foregroundColor(.green) // Set text color to green to match the border
    }
}



