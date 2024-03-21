//
//  FireChatApp.swift
//  FireChat
//
//  Created by Chizaram Chibueze on 3/17/24.
//

import SwiftUI
import FirebaseCore 

@main
struct FireChatApp: App {
    
    init() {
        FirebaseApp.configure() // Configure firebase app
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
