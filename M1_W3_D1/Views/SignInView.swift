//
//  SignInView.swift
//  M1_W3_D1
//
//  Created by Taibah Valley Academy on 3/16/25.
//


import SwiftUI

import SwiftUI

//  SignInView - A user registration screen with input fields and navigation options
struct SignInView: View {
    var body: some View {
        NavigationStack { // Ensures navigation functionality
            ZStack(alignment: .bottom) { // Aligns main content towards the bottom of the screen
                // Background color with light gray opacity
                Color.gray.opacity(0.1)
                    .edgesIgnoringSafeArea(.all) // Extends background to cover the entire screen
                
                VStack {
                    // Displays a logo or welcome image at the top
                    Image("Image1")
                        .resizable()
                        .frame(width: 150, height: 150) // Set image size
                        .padding() // Adds spacing around the image
                    
                    Spacer() // Pushes content down for better layout
                }
                
                VStack(alignment: .leading, spacing: 10) { // Arranges form fields vertically with spacing
                    // Heading for the sign-up form
                    Text("Create Account")
                        .font(.headline) // Sets font style
                        .padding(.top) // Adds spacing at the top
                        .padding(.horizontal) // Adds horizontal spacing for alignment
                    
                    // Custom input fields for user registration
                    CustomField(text: "Full Name") // Input for full name
                    CustomField(text: "Email") // Input for email
                    CustomField(text: "Password") // Input for password
                    CustomField(text: "Confirm Password") // Input for password confirmation
                    
                    // "Remember Me" checkbox (Currently not functional)
                    HStack {
                        Image(systemName: "square") // Square icon (unchecked checkbox)
                            .resizable()
                            .frame(width: 15, height: 15) // Set icon size
                            .foregroundColor(Color(UIColor.systemGray6)) // Light gray color
                            .background(Color(UIColor.systemGray6)) // Background matches system gray
                        
                        Text("Remember Me") // Checkbox label
                            .foregroundColor(Color(UIColor.systemGray6)) // Light gray text color
                    }
                    .padding(.horizontal, 16) // Adds horizontal spacing for better alignment
                    
                    // Footer containing login navigation link
                    FooterView(text: "Log In", destination: LogInView()) // Navigates to LogInView
                    
                }
                .background(.gray.opacity(0.4)) // Adds a semi-transparent gray background to the form
            }
        }
    }
}


#Preview {
    SignInView()
}
