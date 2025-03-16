//
//  LogInView.swift
//  M1_W3_D1
//
//  Created by Taibah Valley Academy on 3/16/25.
//

import SwiftUI

import SwiftUI

// LogInView - A login screen with an image, input fields, and navigation options
struct LogInView: View {
    var body: some View {
        NavigationStack { //  Ensures navigation functionality
            ZStack(alignment: .bottom) { // Stacks elements and aligns content to the bottom
                //  Background color with a light gray opacity
                Color.gray.opacity(0.1)
                    .edgesIgnoringSafeArea(.all) // Extends the background color to cover safe areas
                
                VStack {
                    // Displays an image at the top (e.g., logo or illustration)
                    Image("Image1")
                        .resizable()
                        .frame(width: 200, height: 200) // Set image size
                        .padding() // Add spacing around the image
                    
                    Spacer() // Pushes content down
                }
                
                VStack(alignment: .leading, spacing: 10) { //  Stack input fields and text elements vertically
                    // Welcome message for returning users
                    Text("Welcome Back!")
                        .font(.headline) // Set font to headline size
                        .padding(.top) // Add spacing at the top
                        .padding(.horizontal) // Add horizontal padding
                    
                    // Custom input fields for email and password
                    CustomField(text: "Email") // Email input field
                    CustomField(text: "Password") // Password input field
                    
                    // "Forgot Password?" link
                    Text("Forgot Password?")
                        .padding() // Add spacing
                        .foregroundColor(.gray) // Set text color to gray
                    
                    // "Remember Me" checkbox (Currently not functional)
                    HStack {
                        Image(systemName: "square") // Square icon (unchecked checkbox)
                            .resizable()
                            .frame(width: 20, height: 20) // Set icon size
                            .foregroundColor(Color(UIColor.systemGray6)) // Set color to light gray
                            .background(Color(UIColor.systemGray6)) // Background matches system gray
                        
                        Text("Remember Me") // Label for the checkbox
                            .foregroundColor(Color(UIColor.systemGray6)) // Set text color to light gray
                    }
                    .padding(.horizontal, 16) // Add horizontal padding
                    
                    // Footer containing sign-up navigation
                    FooterView(text: "Sign UP", destination: SignInView()) // Navigates to SignInView
                    
                }
                .background(.gray.opacity(0.4)) // Semi-transparent gray background for form section
            }
        }
    }
}

#Preview {
    LogInView()
}
