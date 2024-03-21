//
//  LoginView.swift
//  FireChat
//
//  Created by Chizaram Chibueze on 3/20/24.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(AuthManager.self) var authManager // Access the authManager from the environment
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.largeTitle)
            
            // Email + password fields
            VStack {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
            }
            .textFieldStyle(.roundedBorder)
            .textInputAutocapitalization(.never)
            .padding(48)
            
            // Sign up + Login Buttons
            HStack {
                Button("Sign Up") {
                    print("Sign up user: \(email), \(password)")
                    
                    // TODO: Sign up user
                    authManager.signUp(email: email, password: password) // Sign in user via authManager
                }
                .buttonStyle(.borderedProminent)
                
                Button("Login") {
                    print("Login user: \(email), \(password)")
                    
                    // TODO: Login user
                    authManager.signIn(email: email, password: password)
                }
                .buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    LoginView()
        .environment(AuthManager()) // For the preview to work, pass an instance of AuthManager into the environment
}
