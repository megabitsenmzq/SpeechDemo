//
//  SceneDelegate.swift
//  CatalystTest
//
//  Created by Jinyu Meng on 2020/10/30.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
        #if targetEnvironment(macCatalyst)
        //Open window with a fixed size, but the user can still change it.
        guard let windowScene = (scene as? UIWindowScene) else { return }
        //Fixed size.
        windowScene.sizeRestrictions?.minimumSize = CGSize(width: 640, height: 750)
        windowScene.sizeRestrictions?.maximumSize = CGSize(width: 640, height: 750)
        //Now the user can change it.
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
            windowScene.sizeRestrictions?.maximumSize = CGSize(width: 10000, height: 10000)
        }
        
        //Hide the titlebar background.
        if let titlebar = windowScene.titlebar {
            titlebar.titleVisibility = .hidden
            titlebar.toolbar = nil
        }
        #endif
    }
    
}

