//
//  LoginScreen.swift
//  LoginPageViewCode
//
//  Created by Matheus Sousa on 03/07/23.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
        
        return image
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        
        return image
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "MF Login"
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "O primeiro login da MF - My First Login"
        
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.attributedPlaceholder = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        textField.textColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.white.cgColor
        
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        textField.textColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1.0
        textField.isSecureTextEntry = true
        textField.layer.borderColor = UIColor.white.cgColor
        
        return textField
    }()
    
    lazy var recoveryPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Recuperar senha?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(UIColor(red: 231/255, green: 48/255, blue: 214/255, alpha: 1.0), for: .normal)
        
        return button
    }()
    
    lazy var gradientImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "gradient")
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        
        return image
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(.white, for: .normal)
        
        return button
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var signInMaskView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 2
        return view
    }()
    
    lazy var ntfIconMaskImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "iconnft")
        
        return image
    }()
    
    lazy var signInMaskLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Entrar com a t-mask"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.backgroundImageView)
        self.addSubview(self.logoImageView)
        self.addSubview(self.loginLabel)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.loginTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.recoveryPasswordButton)
        self.addSubview(self.gradientImageView)
        self.addSubview(self.loginButton)
        self.addSubview(self.lineView)
        self.addSubview(self.signInMaskView)
        self.signInMaskView.addSubview(self.signInMaskLabel)
        self.signInMaskView.addSubview(self.ntfIconMaskImageView)
        
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.logoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 55),
            self.logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoImageView.widthAnchor.constraint(equalToConstant: 108),
            self.logoImageView.heightAnchor.constraint(equalToConstant: 108),
            
            self.loginLabel.topAnchor.constraint(equalTo: self.logoImageView.bottomAnchor, constant: 16),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.descriptionLabel.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 4),
            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            self.loginTextField.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor, constant: 32),
            self.loginTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.loginTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  -20),
            self.loginTextField.heightAnchor.constraint(equalToConstant: 40),
            
            self.passwordTextField.topAnchor.constraint(equalTo: self.loginTextField.bottomAnchor, constant: 12),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  -20),
            self.passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            self.recoveryPasswordButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 12),
            self.recoveryPasswordButton.trailingAnchor.constraint(equalTo: self.loginTextField.trailingAnchor),
            self.recoveryPasswordButton.heightAnchor.constraint(equalToConstant: 16),
            
            self.loginButton.topAnchor.constraint(equalTo: self.recoveryPasswordButton.bottomAnchor, constant: 36),
            self.loginButton.leadingAnchor.constraint(equalTo: self.loginTextField.leadingAnchor),
            self.loginButton.trailingAnchor.constraint(equalTo: self.loginTextField.trailingAnchor),
            self.loginButton.heightAnchor.constraint(equalToConstant: 41),
            
            self.gradientImageView.topAnchor.constraint(equalTo: self.loginButton.topAnchor),
            self.gradientImageView.bottomAnchor.constraint(equalTo: self.loginButton.bottomAnchor),
            self.gradientImageView.leadingAnchor.constraint(equalTo: self.loginButton.leadingAnchor),
            self.gradientImageView.trailingAnchor.constraint(equalTo: self.loginButton.trailingAnchor),
            
            self.lineView.leadingAnchor.constraint(equalTo: self.loginButton.leadingAnchor, constant: 64),
            self.lineView.trailingAnchor.constraint(equalTo: self.loginButton.trailingAnchor, constant: -64),
            self.lineView.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 48),
            self.lineView.heightAnchor.constraint(equalToConstant: 0.5),
            
            self.signInMaskView.topAnchor.constraint(equalTo: self.lineView.bottomAnchor, constant: 48),
            self.signInMaskView.leadingAnchor.constraint(equalTo: self.loginButton.leadingAnchor),
            self.signInMaskView.trailingAnchor.constraint(equalTo: self.loginButton.trailingAnchor),
            self.signInMaskView.heightAnchor.constraint(equalToConstant: 40),
            
        
            self.signInMaskLabel.centerXAnchor.constraint(equalTo: self.signInMaskView.centerXAnchor),
            self.signInMaskLabel.centerYAnchor.constraint(equalTo: self.signInMaskView.centerYAnchor),
            
            self.ntfIconMaskImageView.leadingAnchor.constraint(equalTo: self.signInMaskLabel.leadingAnchor, constant: -48),
            self.ntfIconMaskImageView.centerYAnchor.constraint(equalTo: self.signInMaskView.centerYAnchor),
            self.ntfIconMaskImageView.widthAnchor.constraint(equalToConstant: 28),
            self.ntfIconMaskImageView.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
}
