//
//  LogInViewController.swift
//  QuranMind
//
//  Created by Adham Raouf on 26/01/2024.
//

import UIKit

class LogInViewController: UIViewController {
    
    
    
    private let ImageViewBack : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.image = UIImage(named: "Untitled-2")
        return image
    }()
    
    private let EmailAdressTF : UITextField = {
        let TF = UITextField()
        TF.translatesAutoresizingMaskIntoConstraints = false
        TF.text = "5aledMostafaa333@gmail.com"
        TF.textAlignment = .center
        TF.backgroundColor = .white
        TF.textColor = .black
        TF.tintColor = .gray
        TF.layer.cornerRadius = 12
        TF.textContentType = .emailAddress
        TF.keyboardType = .emailAddress
        let placeholderAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.italicSystemFont(ofSize: 19)
        ]
        
        let attributedPlaceholder = NSAttributedString(string: "Email Adress", attributes: placeholderAttributes)
        TF.attributedPlaceholder = attributedPlaceholder
        
        return TF
    }()
    
    
    private let PasswordTF : UITextField = {
        let TF = UITextField()
        TF.translatesAutoresizingMaskIntoConstraints = false
        TF.text = "987654321"
        TF.textAlignment = .center
        TF.backgroundColor = .white
        TF.textColor = .black
        TF.tintColor = .black
        TF.layer.cornerRadius = 12
        TF.textContentType = .password
        TF.isSecureTextEntry = true
        let placeholderAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.italicSystemFont(ofSize: 19)
        ]
        let attributedPlaceholder = NSAttributedString(string: "Password", attributes: placeholderAttributes)
        TF.attributedPlaceholder = attributedPlaceholder
        return TF
    }()
    
    
    private let LogInButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = true
        button.backgroundColor = .lightGray
        button.setTitle("LogIn", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .regular)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(nil, action: #selector(LogInbuttonTapped), for: .touchUpInside)
        return button
    }()
    
    
    private let Label : UILabel = {
        let Label = UILabel()
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.text = "OR LogIn With:"
        Label.textAlignment = .center
        Label.font = .systemFont(ofSize: 20, weight: .bold)
        Label.textColor = .black
        return Label
    }()
    
    
    private let LogInWithGogButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("Google", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 14
        button.layer.masksToBounds = true
        return button
    }()
    
    
    private let LogInWithFaceButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Facebook", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 14
        button.layer.masksToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        overrideUserInterfaceStyle = .light
        view.addSubview(ImageViewBack)
        view.addSubview(EmailAdressTF)
        view.addSubview(PasswordTF)
        view.addSubview(LogInButton)
        view.addSubview(LogInWithGogButton)
        view.addSubview(LogInWithFaceButton)
        view.addSubview(Label)
        configureConstraints()
        
    }
    
    @objc private func LogInbuttonTapped() {
        let HVC = HomeViewController()
        navigationController?.pushViewController(HVC, animated: true)
    }
    
    
    func configureConstraints() {
        
        
        let BackimageConstraints = [
            ImageViewBack.topAnchor.constraint(equalTo: view.topAnchor),
            ImageViewBack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ImageViewBack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ImageViewBack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        let EmailAdressTFConstraints = [
            EmailAdressTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            EmailAdressTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            EmailAdressTF.widthAnchor.constraint(equalToConstant: 300),
            EmailAdressTF.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let PasswordTFConstraints = [
            PasswordTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            PasswordTF.topAnchor.constraint(equalTo: EmailAdressTF.bottomAnchor, constant: 40),
            PasswordTF.widthAnchor.constraint(equalToConstant: 300),
            PasswordTF.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let LogInButtonConstraints = [
            LogInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LogInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            LogInButton.widthAnchor.constraint(equalToConstant: 350),
            LogInButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let LabelConstraints = [
            Label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            Label.bottomAnchor.constraint(equalTo: LogInButton.topAnchor, constant: -80),
            Label.widthAnchor.constraint(equalToConstant: 170),
        ]
        
        let LogInWithGogButtonConstraints = [
            LogInWithGogButton.leadingAnchor.constraint(equalTo: LogInButton.leadingAnchor),
            LogInWithGogButton.bottomAnchor.constraint(equalTo: LogInButton.topAnchor, constant: -15),
            LogInWithGogButton.widthAnchor.constraint(equalToConstant: 170),
            LogInWithGogButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let LogInWithFaceButtonConstraints = [
            LogInWithFaceButton.trailingAnchor.constraint(equalTo: LogInButton.trailingAnchor),
            LogInWithFaceButton.bottomAnchor.constraint(equalTo: LogInButton.topAnchor, constant: -15),
            LogInWithFaceButton.widthAnchor.constraint(equalToConstant: 170),
            LogInWithFaceButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        NSLayoutConstraint.activate(BackimageConstraints)
        NSLayoutConstraint.activate(EmailAdressTFConstraints)
        NSLayoutConstraint.activate(PasswordTFConstraints)
        NSLayoutConstraint.activate(LogInButtonConstraints)
        NSLayoutConstraint.activate(LabelConstraints)
        NSLayoutConstraint.activate(LogInWithGogButtonConstraints)
        NSLayoutConstraint.activate(LogInWithFaceButtonConstraints)
    }
    
    
}

