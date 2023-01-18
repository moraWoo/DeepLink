//
//  AppDelegate.swift
//  DeepLinks
//
//  Created by Ildar Khabibullin on 18/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        print("Deep link received \(url)")
        
        let yourTargetUrl = URL(string:"\(url)")!
        
        var dict = [String:String]()
        guard let components = URLComponents(url: yourTargetUrl, resolvingAgainstBaseURL: false) else { return true }
        print("components: \(components)")
        if let queryItems = components.queryItems {
            for item in queryItems {
                dict[item.name] = item.value
            }
        }
        print(dict)
        
        return true
    }
    
    
}

