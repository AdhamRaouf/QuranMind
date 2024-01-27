//
//  ViewController.swift
//  QuranMind
//
//  Created by Adham Raouf on 26/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    //    private let appNameLabel : UILabel = {
    //        let Label = UILabel()
    //        Label.translatesAutoresizingMaskIntoConstraints = false
    //        Label.text = ""
    //        Label.font = .systemFont(ofSize: 30, weight: .bold)
    //        Label.tintColor = .label
    //        return Label
    //    }()
    
    
    
    private let ImageViewBack : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.image = UIImage(named: "Untitled-1")
        return image
    }()
    
    
    
    
    private let LogInButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGray
        button.setTitle("LogIn", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .regular)
        button.setTitleColor(.label, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(nil, action: #selector(LogInbuttonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    private let SignUpButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGray
        button.setTitle("SignUp", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .regular)
        button.setTitleColor(.label, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(nil, action: #selector(SignUpbuttonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        //        overrideUserInterfaceStyle = .dark
        view.addSubview(ImageViewBack)
        view.addSubview(LogInButton)
        view.addSubview(SignUpButton)
        configureConstraints()
        UserDefaults.standard.set(true, forKey: "islogedin")
    }
    
    
    
    @objc private func LogInbuttonTapped() {
        let LVC = LogInViewController()
        navigationController?.pushViewController(LVC, animated: true)
    }
    
    
    @objc private func SignUpbuttonTapped() {
        let SVC = SignUpViewController()
        navigationController?.pushViewController(SVC, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    func configureConstraints() {
        
        let BackimageConstraints = [
            ImageViewBack.topAnchor.constraint(equalTo: view.topAnchor),
            ImageViewBack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ImageViewBack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ImageViewBack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
    
        let SignUpButtonConstraints = [
            SignUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            SignUpButton.widthAnchor.constraint(equalToConstant: 350),
            SignUpButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let LogInButtonConstraints = [
            LogInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LogInButton.bottomAnchor.constraint(equalTo: SignUpButton.topAnchor, constant: -20),
            LogInButton.widthAnchor.constraint(equalToConstant: 350),
            LogInButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        NSLayoutConstraint.activate(BackimageConstraints)
        NSLayoutConstraint.activate(LogInButtonConstraints)
        NSLayoutConstraint.activate(SignUpButtonConstraints)
    }
}




