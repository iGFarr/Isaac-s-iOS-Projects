//
//  MenuViewController.swift
//  CubeBuddyProgUI
//
//  Created by Isaac Farr on 7/2/22.
//

import UIKit

class MenuViewController: CBBaseViewController {
    let picker = UIPickerView()
    lazy var timer = TimerViewController()
    lazy var viewControllerTitles = ["Timer": timer]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
        createPickerWheel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        picker.selectRow(0, inComponent: 0, animated: true)
    }
    
    func createPickerWheel(){
        picker.delegate = self
        picker.dataSource = self
        picker.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(picker)
        NSLayoutConstraint.activate([
            picker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            picker.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            picker.heightAnchor.constraint(equalToConstant: 250),
            picker.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32)
        ])
    }
    
    func setupNavBar(){
        guard let nav = self.navigationController else { return }
        nav.navigationItem.backBarButtonItem?.tintColor = .CBTheme.primary
    }
}

extension MenuViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CBConstants.PickerRows.allCases.count + 1
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if row == 0 {
            return NSAttributedString(string: "")
        }
        let title = CBConstants.PickerRows.allCases[row - 1].rawValue
        let color: UIColor = .CBTheme.secondary ?? .systemRed
        let attributes = [NSAttributedString.Key.foregroundColor: color]
        let attributedTitle = NSAttributedString(string: title, attributes: attributes)
        return attributedTitle
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let title = CBConstants.PickerRows.allCases[row - 1].rawValue
        
        if let vc = self.viewControllerTitles[title] {
            
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
