//
//  TimerViewController.swift
//  CubeBuddyProgUI
//
//  Created by Isaac Farr on 7/2/22.
//

import UIKit

class TimerViewController: CBBaseViewController {
    var viewModel: CBViewCreator.TimerView?
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = CBViewCreator.TimerView()
        self.title = "Stopwatch"
        viewModel?.createTimerView(for: self, usingOptionsBar: false)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
