//
//  ImageViewController.swift
//  homeworkTwo
//
//  Created by zedsbook on 04.07.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    var imageView = UIImageView()
    var nameOfImage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpImageView()
    }
    
    func setUpImageView() {
        view.addSubview(imageView)
        imageView.image = UIImage(named: nameOfImage)
//        imageView.contentMode = .scaleAspectFit
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
}
