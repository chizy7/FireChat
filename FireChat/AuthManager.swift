//
//  AuthManager.swift
//  FireChat
//
//  Created by Chizaram Chibueze on 3/20/24.
//

import Foundation
import FirebaseAuth

@Observable // Make class observable
class AuthManager {
    
    // A property to store the logged in user. User is an object provided by FirebaseAuth framework
    var user: User?
    
    // Determines if AuthManager should use mocked data
    let isMocked: Bool
    
    var userEmail: String? {
        
        // If mocked, return a mocked email string, otherwise return the users email if available
        isMocked ? "kingsley@dog.com" : user?.email
    }
    
    init(isMocked: Bool = false) {
        self.isMocked = isMocked
        
        // Check for cached user for persisted login
        // https://firebase.google.com/docs/auth/ios/manage-users#get_the_currently_signed-in_user

        user = Auth.auth().currentUser
    }
    
    // https://firebase.google.com/docs/auth/ios/start#sign_up_new_users
    func signUp(email: String, password: String) {
        Task {
            do {
                let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
                user = authResult.user // Set the user
            } catch {
                print(error)
            }
        }
    }
    
    // https://firebase.google.com/docs/auth/ios/start#sign_in_existing_users
    func signIn(email: String, password: String) {
        Task {
            do {
                let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
                user = authResult.user // Set the user
            } catch {
                print(error)
            }
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            user = nil // Set the user to nil after sign out
        } catch {
            print (error)
        }
    }
}
