/*:
 # Singleton
 Code example
 
 */

import UIKit

let app = UIApplication.shared

// MARK: will errow, doesn't allow more than one instance to be created.
//let app2 = UIApplication()


public class MySIngleton {
    static let shared = MySIngleton()
    
    // MARK 避免產生新的 instances
    private init() {}
}

let mySingleton = MySIngleton.shared

// MARK: will error too
//let mySingleton2 = MySIngleton()



