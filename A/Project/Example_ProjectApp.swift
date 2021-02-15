//
//  Example_ProjectApp.swift
//  Example Project
//
//  Created by Can Balkaya on 2/15/21.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    
    // MARK: - Methods
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}

@main
struct Example_ProjectApp: App {
    
    // MARK: - Properties
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
  
    // MARK: - Life Cycle
    init() {
        FirebaseApp.configure()
    }
  
    // MARK: - UI Elements
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
