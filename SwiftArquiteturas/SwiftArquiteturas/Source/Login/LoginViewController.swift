//
//  LoginViewController.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 02/10/2022.
//

import UIKit

class LoginViewController: UIViewController {
    let presenter: LoginPresenter = LoginPresenter()
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.delegate = self
    }
    
    
    @IBAction func openButtonTap(_ sender: Any) {
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            
            let userModel = UserModel(email: email,
                                      password: password)
            presenter.login(userModel: userModel)
        }
    }
    
    
    @IBAction func registerButtonTap(_ sender: Any) {
        let register = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        register.modalPresentationStyle = .fullScreen
        
        self.present(register, animated: true)
    }
}

extension LoginViewController: LoginPresenterDelegate {
    func goHome() {
        
        let home = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        home.modalPresentationStyle = .fullScreen
        self.present(home, animated: true)
    }
    
    func showMessage(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
}

