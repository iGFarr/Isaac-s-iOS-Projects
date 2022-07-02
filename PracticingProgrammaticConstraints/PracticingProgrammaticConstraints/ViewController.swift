//
//  ViewController.swift
//  PracticingProgrammaticConstraints
//
//  Created by Isaac Farr on 7/1/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        5
    }
    
    let stack = UIStackView()
    let topLabel = UILabel()
    let picker = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createStackView()
        createTopLabel()
        createPickerView()
    }


    func createStackView(){
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .equalSpacing
        view.addSubview(stack)
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
    
    func createTopLabel(){
        topLabel.text = "This is just a test."
        topLabel.textColor = .systemBlue
        topLabel.textAlignment = .center
        topLabel.font = UIFont(name: "Arial", size: 30)
        topLabel.numberOfLines = 0
        topLabel.lineBreakMode = .byWordWrapping
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(topLabel)
        
        NSLayoutConstraint.activate([
            topLabel.heightAnchor.constraint(lessThanOrEqualToConstant: 100),
            topLabel.widthAnchor.constraint(equalToConstant: 200),
            topLabel.topAnchor.constraint(equalTo: stack.topAnchor, constant: 16)
        ])
    }
    
    func createPickerView(){
        picker.dataSource = self
        picker.delegate = self
        picker.translatesAutoresizingMaskIntoConstraints = false
        picker.backgroundColor = .systemRed
        stack.addArrangedSubview(picker)

        NSLayoutConstraint.activate([
            picker.heightAnchor.constraint(equalToConstant: 400),
            picker.widthAnchor.constraint(equalToConstant: 300),
            picker.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 32),
            picker.bottomAnchor.constraint(equalTo: stack.bottomAnchor, constant: -50)
        ])
    }
    
    var rowArray = ["Test1", "Test2", "Test3", "Test4", "Test5"]
     
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if row == 3 {
            return "Different Test"
        }
        return rowArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let secondVC = SecondVC()
        self.present(secondVC, animated: true) {
            Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.printStuff), userInfo: nil, repeats: false)
        }
        self.rowArray.reverse()
    }

    @objc
    func printStuff(){
        print("Hooray it's done")
    }
}

