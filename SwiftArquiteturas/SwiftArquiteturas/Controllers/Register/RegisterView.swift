//
//  RegisterView.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 08/10/2022.
//

import Foundation
import UIKit

class RegisterView: UIView {
    //MARK: Clouser
    var onRegisterTap:((_ email: String, _ password: String) -> Void)?
    
    //MARK: Properts
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        
        return label
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        
        return label
    }()
    
    lazy var passwordConfirmationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Confirme sua Senha"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        
        textField.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        textField.setLeftPaddingPoints(15)
        
        textField.placeholder = "Endereço de email"
        textField.keyboardType = .emailAddress
        
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        
        textField.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        textField.setLeftPaddingPoints(15)
        
        textField.placeholder = "Informe a Senha"
        textField.keyboardType = .default
        
        return textField
    }()
    
    lazy var passwordConfirmationTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        
        textField.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        textField.setLeftPaddingPoints(15)
        
        textField.placeholder = "Confirme sua Senha"
        textField.keyboardType = .default
        
        return textField
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Registrar", for: .normal)
        button.backgroundColor = .systemBlue
        
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(regiterButtonTap), for: .touchUpInside)
        
        return button
    }()
    
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackgroundColor
        
        setVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Set Visual Elements
    func setVisualElements() {
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordLabel)
        self.addSubview(passwordConfirmationLabel)
        self.addSubview(passwordTextField)
        self.addSubview(passwordConfirmationTextField)
        self.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordConfirmationLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            passwordConfirmationLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordConfirmationLabel.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            
            passwordConfirmationTextField.topAnchor.constraint(equalTo: passwordConfirmationLabel.bottomAnchor, constant: 8),
            passwordConfirmationTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordConfirmationTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            passwordConfirmationTextField.heightAnchor.constraint(equalToConstant: 40),
            
            registerButton.topAnchor.constraint(equalTo: passwordConfirmationTextField.bottomAnchor, constant: 20),
            registerButton.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    //MARK: - Actions
    @objc
    func regiterButtonTap() {
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            self.onRegisterTap?(email, password)
        } else {
            // Dar mensagem dizendo que os campos tem que ser preenchidos corretamente.
        }
    }
}
