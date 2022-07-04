//
//  ViewController.swift
//  someApp
//
//  Created by zedsbook on 02.07.2022.
//

import UIKit

class ViewController: UIViewController {

    let choiceLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label view
        view.addSubview(choiceLabel)

        choiceLabel.text = "Choice your hero"
        choiceLabel.textColor = UIColor.darkGray
        choiceLabel.numberOfLines = 0
        choiceLabel.textAlignment = .center
        choiceLabel.font = choiceLabel.font.withSize(40)

        choiceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            choiceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            choiceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            choiceLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            choiceLabel.heightAnchor.constraint(equalToConstant: 140)
        ])
    }
}

