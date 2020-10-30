//
//  ViewController.swift
//  CatalystTest
//
//  Created by Jinyu Meng on 2020/10/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeStatusBarTo456(_ sender: Any) {
        appKitPart?.updateStatusBarItem()
    }
    
}

