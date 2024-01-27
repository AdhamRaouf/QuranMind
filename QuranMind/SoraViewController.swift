//
//  SoraViewController.swift
//  QuranMind
//
//  Created by Adham Raouf on 26/01/2024.
//

import UIKit

class SoraViewController: UIViewController {

    
    
    private let ImageViewBack : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.image = UIImage(named: "البقرة 2")
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(ImageViewBack)
        configureConstraints()

        
    }
    
    func configureConstraints() {
        
        let BackimageConstraints = [
            ImageViewBack.topAnchor.constraint(equalTo: view.topAnchor),
            ImageViewBack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ImageViewBack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ImageViewBack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
    
        NSLayoutConstraint.activate(BackimageConstraints)
        
        
    }

}
