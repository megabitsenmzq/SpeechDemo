//
//  AppDelegate.swift
//  CatalystTest
//
//  Created by Jinyu Meng on 2020/10/30.
//

import UIKit

var appKitPart: AppKitBridge?

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        #if targetEnvironment(macCatalyst)
        //Load the AppKit bundle. (You need to link the bundle to this main app first.)
        let appKitBundlePath = Bundle.main.builtInPlugInsPath!.appending("/AppKitPart.bundle")
        guard let appKitBundle = Bundle(path: appKitBundlePath) else { return true }
        appKitBundle.load()
        guard let appkitClass = appKitBundle.principalClass as? AppKitBridge.Type else {
            return true}
        appKitPart = appkitClass.init()
        #endif
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }


}

