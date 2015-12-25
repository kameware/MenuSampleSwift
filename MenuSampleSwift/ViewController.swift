//
//  ViewController.swift
//  MenuSampleSwift
//
//  Created by nakamura on 2015/12/23.
//  Copyright © 2015年 mineharu. All rights reserved.
//

import UIKit
import SWRevealViewController

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

