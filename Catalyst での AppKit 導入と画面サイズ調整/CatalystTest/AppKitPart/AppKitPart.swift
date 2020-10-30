//
//  AppKitPart.swift
//  AppKitPart
//
//  Created by Jinyu Meng on 2020/10/30.
//

import Cocoa

//Add "Principal class" as "AppKitPart.AppKitPart" to Info.plist first.
class AppKitPart: NSObject, AppKitBridge {
    let statusBarItem = StatusBarItem()
    required override init() {
        super.init()
    }
    
    //MARK: - Bridge
    func updateStatusBarItem() {
        statusBarItem.updateStatusBarItem()
    }
}
