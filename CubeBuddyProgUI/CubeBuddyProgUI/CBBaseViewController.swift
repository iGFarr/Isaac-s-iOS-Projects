//
//  ViewController.swift
//  CubeBuddyProgUI
//
//  Created by Isaac Farr on 7/1/22.
//

import UIKit

class CBBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "CBPrimary")
        if let nav = self.navigationController {
            nav.navigationBar.barTintColor = UIColor(named: "CBSecondary")
        }
    }


}

