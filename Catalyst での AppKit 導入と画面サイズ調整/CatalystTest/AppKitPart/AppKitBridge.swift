//
//  AppKitBridge.swift
//  AppKitPart
//
//  Created by Jinyu Meng on 2020/10/30.
//

import Cocoa

@objc(AppKitBridge) //Important!
protocol AppKitBridge: NSObjectProtocol {
    init()
    func updateStatusBarItem()
}
