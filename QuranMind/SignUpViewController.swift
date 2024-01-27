//
//  SignUpViewController.swift
//  QuranMind
//
//  Created by Adham Raouf on 26/01/2024.
//

import UIKit

class SignUpViewController: UIViewController {

    
    private let ImageViewBack : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.image = UIImage(named: "Untitled-2")
        return image
    }()
    
    
    private let FNameTF : UITextField = {
        let TF = UITextField()
        TF.translatesAutoresizingMaskIntoConstraints = false
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
        let attributedPlaceholder = NSAttributedString(string: "Frist Name", attributes: placeholderAttributes)
        TF.attributedPlaceholder = attributedPlaceholder
        return TF
    }()
    
    
    private let LNameTF : UITextField = {
        let TF = UITextField()
        TF.translatesAutoresizingMaskIntoConstraints = false
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
        let attributedPlaceholder = NSAttributedString(string: "Last Name", attributes: placeholderAttributes)
        TF.attributedPlaceholder = attributedPlaceholder
        return TF
    }()
    
    
    private let PhoneNumberTF : UITextField = {
        let TF = UITextField()
        TF.translatesAutoresizingMaskIntoConstraints = false
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
        let attributedPlaceholder = NSAttributedString(string: "Phone Number", attributes: placeholderAttributes)
        TF.attributedPlaceholder = attributedPlaceholder
        return TF
    }()
    
    
    private let EmailAdressTF : UITextField = {
        let TF = UITextField()
        TF.translatesAutoresizingMaskIntoConstraints = false
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
    
    
    private let ConfirmPasswordTF : UITextField = {
        let TF = UITextField()
        TF.translatesAutoresizingMaskIntoConstraints = false
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
        let attributedPlaceholder = NSAttributedString(string: "Confirm Password", attributes: placeholderAttributes)
        TF.attributedPlaceholder = attributedPlaceholder
        return TF
    }()
    
    
    private let Label : UILabel = {
        let Label = UILabel()
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.text = "OR Sign Up With:"
        Label.textAlignment = .center
        Label.font = .systemFont(ofSize: 20, weight: .bold)
        Label.textColor = .black
        return Label
    }()
    
    
    private let SignUpWithGogButton : UIButton = {
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
    
    
    private let SignUpWithFaceButton : UIButton = {
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
    
    
    private let SignUpButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.setTitle("SignUp", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 23, weight: .regular)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(nil, action: #selector(SignUpbuttonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(ImageViewBack)
        view.addSubview(FNameTF)
        view.addSubview(LNameTF)
        view.addSubview(PhoneNumberTF)
        view.addSubview(EmailAdressTF)
        view.addSubview(PasswordTF)
        view.addSubview(ConfirmPasswordTF)
        view.addSubview(SignUpWithGogButton)
        view.addSubview(SignUpWithFaceButton)
        view.addSubview(SignUpButton)
        view.addSubview(Label)
        configureConstraints()
    }
    
    @objc private func SignUpbuttonTapped() {
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
        
        let FNameTFConstraints = [
            FNameTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FNameTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            FNameTF.widthAnchor.constraint(equalToConstant: 300),
            FNameTF.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let LNameTFConstraints = [
            LNameTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LNameTF.topAnchor.constraint(equalTo: FNameTF.bottomAnchor, constant: 40),
            LNameTF.widthAnchor.constraint(equalToConstant: 300),
            LNameTF.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let PhoneNumberTFConstraints = [
            PhoneNumberTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            PhoneNumberTF.topAnchor.constraint(equalTo: LNameTF.bottomAnchor, constant: 40),
            PhoneNumberTF.widthAnchor.constraint(equalToConstant: 300),
            PhoneNumberTF.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let EmailAdressTFConstraints = [
            EmailAdressTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            EmailAdressTF.topAnchor.constraint(equalTo: PhoneNumberTF.bottomAnchor, constant: 40),
            EmailAdressTF.widthAnchor.constraint(equalToConstant: 300),
            EmailAdressTF.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let PasswordTFConstraints = [
            PasswordTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            PasswordTF.topAnchor.constraint(equalTo: EmailAdressTF.bottomAnchor, constant: 40),
            PasswordTF.widthAnchor.constraint(equalToConstant: 300),
            PasswordTF.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let ConfirmPasswordTFConstraints = [
            ConfirmPasswordTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ConfirmPasswordTF.topAnchor.constraint(equalTo: PasswordTF.bottomAnchor, constant: 40),
            ConfirmPasswordTF.widthAnchor.constraint(equalToConstant: 300),
            ConfirmPasswordTF.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let SignUpButtonConstraints = [
            SignUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            SignUpButton.widthAnchor.constraint(equalToConstant: 350),
            SignUpButton.heightAnchor.constraint(equalToConstant: 60)
            
        ]
        
        let LabelConstraints = [
            
            Label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            Label.bottomAnchor.constraint(equalTo: SignUpButton.topAnchor, constant: -80),
            Label.widthAnchor.constraint(equalToConstant: 170),
            
            
        ]
        
        let SignUpWithGogButtonConstraints = [
            
            SignUpWithGogButton.leadingAnchor.constraint(equalTo: SignUpButton.leadingAnchor),
            SignUpWithGogButton.bottomAnchor.constraint(equalTo: SignUpButton.topAnchor, constant: -15),
            SignUpWithGogButton.widthAnchor.constraint(equalToConstant: 170),
            SignUpWithGogButton.heightAnchor.constraint(equalToConstant: 60)
            
        ]
        
        let SignUpWithFaceButtonConstraints = [
            SignUpWithFaceButton.trailingAnchor.constraint(equalTo: SignUpButton.trailingAnchor),
            SignUpWithFaceButton.bottomAnchor.constraint(equalTo: SignUpButton.topAnchor, constant: -15),
            SignUpWithFaceButton.widthAnchor.constraint(equalToConstant: 170),
            SignUpWithFaceButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        NSLayoutConstraint.activate(BackimageConstraints)
        NSLayoutConstraint.activate(FNameTFConstraints)
        NSLayoutConstraint.activate(LNameTFConstraints)
        NSLayoutConstraint.activate(PhoneNumberTFConstraints)
        NSLayoutConstraint.activate(EmailAdressTFConstraints)
        NSLayoutConstraint.activate(PasswordTFConstraints)
        NSLayoutConstraint.activate(ConfirmPasswordTFConstraints)
        NSLayoutConstraint.activate(SignUpButtonConstraints)
        NSLayoutConstraint.activate(SignUpWithGogButtonConstraints)
        NSLayoutConstraint.activate(SignUpWithFaceButtonConstraints)
        NSLayoutConstraint.activate(LabelConstraints)
        
    }
}
