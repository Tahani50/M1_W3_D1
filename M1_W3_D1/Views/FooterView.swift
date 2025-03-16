//
//  FooterView.swift
//  M1_W3_D1
//
//  Created by Taibah Valley Academy on 3/16/25.
//

import SwiftUI

import SwiftUI

// FooterView - A reusable footer with social media login options, a signup button, and a navigation link
struct FooterView<Destination: View>: View {
    
    var text: String // The text displayed inside the NavigationLink
    var destination: Destination // The destination view when the NavigationLink is tapped
    
    var body: some View {
        VStack(spacing: 20) { // Stack elements vertically with 20 points of spacing
            Divider() // A thin horizontal divider to separate footer from other content
            
            // Social media login icons (Facebook, Google, Apple)
            HStack(alignment: .center, spacing: 50) { // Horizontally align icons with equal spacing
                Image("FaceBook") // Facebook logo
                    .resizable()
                    .frame(width: 30, height: 30) // Set a fixed size for the image
                Image("Google") // Google logo
                    .resizable()
                    .frame(width: 30, height: 30)
                Image("Apple") // Apple logo
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            
            // "Sign Up" button using a custom button component
            CustomButtonFill(name: "Sign Up", destination: SignInView()) // Calls SignInView when tapped
            
            // "Don't have an account yet?" + NavigationLink
            HStack {
                Text("Don't have an account yet?") // Informational text
                
                NavigationLink(destination: destination) { // Navigation link to another view
                    Text(text) // Customizable text (e.g., "Log In")
                        .foregroundColor(.green) // Make the text green for visibility
                }
            }
        }
    }
}

