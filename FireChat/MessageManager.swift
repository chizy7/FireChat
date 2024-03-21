//
//  MessageManager.swift
//  FireChat
//
//  Created by Chizaram Chibueze on 3/20/24.
//

import Foundation
import FirebaseFirestore

@Observable // Add the observable macro
class MessageManager {
    
    var messages: [Message] = []
    
    init(isMocked: Bool = false) {
        if isMocked {
            messages = Message.mockedMessages
        } else {
            // TODO: Fetch messages from firestore database
        }
    }
    
    // TODO: Save message
    
    // TODO: Get messages
}
