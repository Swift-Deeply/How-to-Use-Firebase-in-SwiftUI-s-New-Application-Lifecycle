/*:
# Start Using SwiftUI’s New Life Cycle

 &nbsp;
 First of all, we need to create a new Xcode project. (To use SwiftUI’s new life cycle, you need [Xcode 12](https://apps.apple.com/tr/app/xcode/id497799835?mt=12)) While creating a new project, care that the "Interface" is "SwiftUI" and the "Life Cycle" is "SwiftUI App".
 &nbsp;
 ![Xcode Image](Xcode-Image.png)
 &nbsp;
 After creating a project, go to **Example_ProjectApp.swift** file -your project’s name can be different to mine, that's why I have to say, go to the file ending with "App.swift”-, because when using the new app life cycle, the earliest possible point to participate in the life cycle is by adding an initializer to your app’s main entry point.
*/
import SwiftUI

@main
struct Example_ProjectApp: App {
    var body: some Scene {
        WindowGroup {
              ContentView()
        }
    }
}
/*:
 Let's say you’re configuring Firebase on this project. Thus, we need to import Firebase on this file.
*/
import SwiftUI
import Firebase
/*:
 Well, how we can initialize Firebase? The answer is simple: `init` method.
*/
import SwiftUI
import Firebase

@main
struct Example_ProjectApp: App {

    // MARK: - Life Cycle
    init() {
        FirebaseApp.configure()
      }
  
    // MARK: - UI Elements
    var body: some Scene {
        WindowGroup {
              MainScreen()
        }
    }
}
/*:
 This works well for Firebase SDKs such as Cloud Firestore, but such as Firebase Cloud Messaging, this is not sufficient, as they use method swizzling to hook into the application life cycle. This mechanism allows frameworks to intercept calls to specific methods and handle them before passing the call on to your app.

 In this case, you need to use the `@UIApplicationDelegateAdaptor` property wrapper to connect your app to an instance of `AppDelegate`.
*/
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
/*:
 At the same time, with this way you will be able to gradually migrate to the new app life cycle model.
 
 ---
 
 I hope this article is helpful for your SwiftUI project(s). I will continue write about Firebase. Take care of yourselves!
*/
//: Page 3 / 3  |  [Previous: UIKit App Delegate Life Cycle vs SwiftUI Life Cycle](@previous)
