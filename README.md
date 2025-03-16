# SwiftUI MVVM Authentication Screens

## Project Overview
This project implements **Login and Signup screens** using **SwiftUI** while following the **MVVM (Model-View-ViewModel) architecture**. The goal is to build **clean, reusable, and maintainable** SwiftUI views with proper state management using **ObservableObject**.

## Features
- **Modern UI Design**: Beautiful UI with rounded corners, spacing, and a clean layout.
- **MVVM Architecture**: Separation of concerns for better code organization.
- **State Management with ObservableObject**: Efficient data handling in the ViewModel.
- **Navigation**: Seamless transition between login and signup screens.
- **Custom UI Components**: Reusable buttons, text fields, and footer views.

## 📁 Project Structure
```
├── Models/
│   ├── User.swift            # User model (if needed for authentication)
│
├── ViewModels/
│   ├── ViewModel.swift   # Handles authentication logic and state
│
├── Views/
│   ├── LogInView.swift       # Login screen UI
│   ├── SignInView.swift      # Signup screen UI
│   ├── CustomField.swift     # Reusable text input field
│   ├── CustomButtonFill.swift  # Filled button component
│   ├── CustomButtonBorder.swift # Outlined button component
│   ├── FooterView.swift      # Footer with social login and navigation
│
├── Resources/
│   ├── Assets.xcassets       # App images and icons
```

## How It Works
1. **MVVM Pattern**
   - `AuthViewModel` manages authentication state and logic.
   - Views (`LogInView`, `SignInView`) observe the ViewModel.
   - `CustomField` and `CustomButton` ensure reusable UI components.

2. **Navigation**
   - Uses `NavigationStack` for smooth transitions.
   - `FooterView` provides links between Login and Signup screens.

3. **UI Enhancements**
   - Rounded corners on input fields and buttons.
   - Background color with opacity for a soft design.
   - Spacing and alignment for better readability.

## 📦 Installation & Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo-url.git
   ```
2. Open the project in **Xcode**.
3. Run the app on a simulator or a real device.
