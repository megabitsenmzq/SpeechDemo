//
//  StatusBarItem.swift
//  AppKitPartForCatalyst
//
//  Created by Jinyu Meng on 2020/10/07.
//  Copyright © 2020 Jinyu Meng. All rights reserved.
//

import Cocoa

class StatusBarItem {
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    init() {
        statusItem.button!.title = "123"
    }
    
    func updateStatusBarItem() {
        statusItem.button!.title = "456"
    }
}
