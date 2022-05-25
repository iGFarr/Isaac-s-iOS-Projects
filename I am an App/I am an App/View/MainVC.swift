//
//  ViewController.swift
//  I am an App
//
//  Created by Isaac Farr on 5/25/22.
//

import UIKit

class MainVC: UIViewController {
    private let contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .systemPurple
        return contentView
    }()
    
    private let richLabel: UILabel = {
        let richLabel = UILabel()
        richLabel.translatesAutoresizingMaskIntoConstraints = false
        richLabel.text = Constants.richLabelText
        richLabel.font = .init(name: Constants.richLabelFont, size: 60)
        return richLabel
    }()

    private let moneyImageView: UIImageView = {
        let moneyImageView = UIImageView()
        let moneyImage = UIImage(named: Constants.moneyImageName)
        moneyImageView.contentMode = UIView.ContentMode.scaleAspectFit
        moneyImageView.image = moneyImage
        moneyImageView.translatesAutoresizingMaskIntoConstraints = false
        return moneyImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildContentView()
        buildRichLabel()
        buildMoneyImageView()
    }
    
    func buildContentView(){
        view.addSubview(contentView)
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(contentView.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor))
        constraints.append(contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func buildMoneyImageView(){
        contentView.addSubview(moneyImageView)
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(moneyImageView.widthAnchor.constraint(equalToConstant: 150))
        constraints.append(moneyImageView.heightAnchor.constraint(equalToConstant: 150))
        constraints.append(moneyImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor))
        constraints.append(moneyImageView.topAnchor.constraint(equalTo: richLabel.bottomAnchor, constant: 100))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func buildRichLabel(){
        contentView.addSubview(richLabel)
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(richLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100))
        constraints.append(richLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor))
        constraints.append(richLabel.heightAnchor.constraint(equalToConstant: 100))
        
        NSLayoutConstraint.activate(constraints)
    }
}

