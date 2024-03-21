//
//  LoginView.swift
//  FireChat
//
//  Created by Chizaram Chibueze on 3/20/24.
//

import SwiftUI

struct LoginView: View {
    
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
                }
                .buttonStyle(.borderedProminent)
                
                Button("Login") {
                    print("Login user: \(email), \(password)")
                    
                    // TODO: Login user
                }
                .buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    LoginView()
}
