//
//  HomeView.swift
//  M1_W3_D1
//
//  Created by Taibah Valley Academy on 3/16/25.
//

import SwiftUI

import SwiftUI

// HomeView - The main screen with a welcome message and navigation buttons
struct HomeView: View {
    var body: some View {
        // NavigationStack ensures that the view supports navigation
        NavigationStack {
            ZStack {
                // Background color with a light gray opacity
                Color.gray.opacity(0.1)
                    .ignoresSafeArea() // Extends the background color to the edges of the screen
            
                VStack {
                    // Display a resizable image at the top
                    Image("Image1")
                        .resizable()
                        .frame(width: 200, height: 200) // Set image size
                        .padding() // Add padding around the image
                    
                    Spacer() // Pushes content down
                    
                    // Welcome message with a large title font
                    Text("Welcome To")
                        .font(.largeTitle)
                        .padding()
                    
                    // Subtitle text with gray color for readability
                    Text("We Start the Journey to a Healthy Life")
                        .foregroundColor(.gray)
                    
                    Spacer() // Pushes content down
                    
                    // "Sign Up" button with a border design
                    CustomButtonBorder(name: "Sign Up", destination: SignInView())
                    
                    // "Log In" button with a filled design
                    CustomButtonFill(name: "Log In", destination: LogInView())
                }
                .padding() // Adds padding to the entire VStack
            }
        }
    }
}
