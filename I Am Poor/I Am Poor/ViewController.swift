//
//  ViewController.swift
//  I Am Poor
//
//  Created by Isaac Farr on 5/27/22.
//

import UIKit

class ViewController: UIViewController {
    private let verticalStack: UIStackView = {
        let verticalStack = UIStackView()
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        verticalStack.axis = .horizontal
        verticalStack.distribution = .fill
        verticalStack.backgroundColor = .systemBlue
        return verticalStack
    }()
    
    private let horizontalStack: UIStackView = {
        let horizontalStack = UIStackView()
        horizontalStack.translatesAutoresizingMaskIntoConstraints = false
        horizontalStack.axis = .vertical
        horizontalStack.distribution = .fill
        return horizontalStack
    }()
    
    private let poorLabel: UILabel = {
        let poorLabel = UILabel()
        poorLabel.translatesAutoresizingMaskIntoConstraints = false
        poorLabel.text = "I am poor, don't ask for "
        poorLabel.font = .init(name: "Helvetica", size: 32)
        return poorLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildVerticalStackView()
        
    }
    
    private func buildVerticalStackView(){
        view.addSubview(verticalStack)
        verticalStack.addSubview(horizontalStack)
        horizontalStack.addSubview(poorLabel)

        var constraints = [NSLayoutConstraint]()
        
        constraints.append(horizontalStack.heightAnchor.constraint(equalToConstant: 75))
        
        constraints.append(poorLabel.bottomAnchor.constraint(equalTo: horizontalStack.bottomAnchor))
        constraints.append(poorLabel.leadingAnchor.constraint(equalTo: horizontalStack.leadingAnchor, constant: 16))

        constraints.append(verticalStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraints.append(verticalStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(verticalStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(verticalStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
}

