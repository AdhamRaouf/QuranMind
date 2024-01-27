//
//  HomeViewController.swift
//  QuranMind
//
//  Created by Adham Raouf on 26/01/2024.
//

import UIKit

class HomeViewController: UIViewController {

    
    private let ImageViewBack : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        
        image.image = UIImage(named: "Untitled-3")
        return image
    }()
    
    
    private let UploadButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.setTitle("Upload a record", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .regular)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        return button
    }()
    
    
    private let PlayButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.setTitle("generate", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .regular)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        return button
    }()
    
    private let FehrasButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.setTitle("Fehras", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .regular)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(nil, action: #selector(FehrasbuttonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    
    @objc private func FehrasbuttonTapped() {
//        let FVC = self.storyboard?.instantiateViewController(identifier: "FVC") as! FehresTableViewController
//        self.navigationController?.pushViewController(FVC, animated: true)
        
        let FVC = FehresTableViewController()
        navigationController?.pushViewController(FVC, animated: true)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        view.addSubview(ImageViewBack)
        view.addSubview(UploadButton)
        view.addSubview(PlayButton)
        view.addSubview(FehrasButton)
        configureConstraints()
    }

    
    
    func configureConstraints() {
        
        
        let BackimageConstraints = [
            ImageViewBack.topAnchor.constraint(equalTo: view.topAnchor),
            ImageViewBack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ImageViewBack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ImageViewBack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        
        
        let UploadButtonConstraints = [
            UploadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            UploadButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 230),
            UploadButton.widthAnchor.constraint(equalToConstant: 300),
            UploadButton.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let PlayButtonConstraints = [
            PlayButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            PlayButton.topAnchor.constraint(equalTo: UploadButton.bottomAnchor, constant: 40),
            PlayButton.widthAnchor.constraint(equalToConstant: 300),
            PlayButton.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let FehrasButtonConstraints = [
            FehrasButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FehrasButton.topAnchor.constraint(equalTo: PlayButton.bottomAnchor, constant: 40),
            FehrasButton.widthAnchor.constraint(equalToConstant: 300),
            FehrasButton.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        NSLayoutConstraint.activate(BackimageConstraints)
        NSLayoutConstraint.activate(UploadButtonConstraints)
        NSLayoutConstraint.activate(PlayButtonConstraints)
        NSLayoutConstraint.activate(FehrasButtonConstraints)
    }
    
    
}
