/*:
# UIKit App Delegate Life Cycle vs SwiftUI Life Cycle

 &nbsp;
 UIKit’s life cycle is like that below: You need to write Firebase’s `configure()` function in `didFinishLaunchingWithOptions` method. This method is for the operations that should be done when the application is opened for the first time.
&nbsp;
*/
import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
     }
}
/*:
 SwiftUI life cycle is much different than UIKit one, because SwiftUI is declarative framework. That’s why, we different methods and classes. Obviously, the methods we will use in the SwiftUI lifecycle will be slightly different.

 If you have used SwiftUI and UIKit together before, you know that some classes or methods we want to use in SwiftUI are from UIKit, as many things are still not supported in SwiftUI. I have to say that we will also get help from UIKit while adapting the SwiftUI app life cycle to Firebase.

 So, I cannot say for the moment that there is much difference between them. Maybe things can change with SwiftUI 3.0. Who knows.
*/
//: Page 2 / 3  |  [Next: Start Using SwiftUI’s New Life Cycle](@next)
