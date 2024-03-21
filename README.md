# FireChat

## Overview

FireChat is a dynamic SwiftUI-powered chat app that harnesses the power of Firebase Firestore as its custom backend server. This app will allow users to engage in real-time conversations within an interactive chat environment. So grab a bucket of water, because this Firebase-powered app is about to bring the heat 🔥.

## 🎯 Goals

Firechat covers the following concepts in SwiftUI:

- Creating and configuring a custom server using Firebase Firestore.
- Setting up listeners for real-time updates.
- Reading and writing data from the server.
- Decoding fetched data into local model objects.
- Creating observable objects to manage fetching data and authentication.
- Passing observable objects in the environment.

## Features

### Required Features

Firechat has the following required features allowing users to:

- Create and send a text message to Firebase.
- Receive messages posted to Firebase.
- Understand if a message was sent by them or someone else based on the position and color of the message.

Bonus features:

- TBD...

## Getting Started

1. Clone this repository to get the starter project.
2. Ensure you have Xcode installed and up-to-date.
3. Navigate to the [Firebase Console](https://console.firebase.google.com/) and create a new project.
4. Follow the instructions to add Firebase to your iOS app, including downloading the `GoogleService-Info.plist` file and adding it to your Xcode project.
5. Install the necessary Firebase pods by running `pod install` in your project directory.
6. Open the `.xcworkspace` file to start working on your project in Xcode.

## Implementation Guide

### Setting Up Firebase Firestore

1. In the Firebase Console, navigate to your project's settings and select the Firestore Database service.
2. Follow the prompts to create a new Firestore database.
3. Implement the necessary code to initialize Firebase in your app, typically in your `AppDelegate` or SwiftUI App lifecycle.

### Building the Chat UI

1. Create a SwiftUI view that will serve as the chat interface.
2. Implement a form for sending messages, including a text field and a send button.
3. Display messages in a scrollable list, ensuring messages are distinguishable between the user and others.

### Integrating Real-Time Chat

1. Write functions to send messages to Firestore.
2. Set up a listener to receive messages in real time from Firestore.
3. Decode the fetched messages into your local model objects for display in the UI.

## Resources

- [Firebase Documentation](https://firebase.google.com/docs)
- [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui)

Happy coding, and enjoy building with FireChat! 🔥
