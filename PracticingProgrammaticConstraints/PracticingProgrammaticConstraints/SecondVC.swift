//
//  SecondVC.swift
//  PracticingProgrammaticConstraints
//
//  Created by Isaac Farr on 7/1/22.
//

import UIKit

class SecondVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        print("Presented")
        let presentingVC = self.presentingViewController as! ViewController
        presentingVC.picker.reloadAllComponents()
    }
}
