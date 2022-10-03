//
//  LoginPresenter.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 02/10/2022.
//

import Foundation

protocol LoginPresenterDelegate {
    func showMessage(title: String, message: String)
    func goHome()
}

class LoginPresenter {
    var delegate: LoginPresenterDelegate?
    
    func login(userModel: UserModel) {
        let manager = UserManager(business: UserBusiness())
        manager.login(email: userModel.email,
                      password: userModel.password) {[weak self]model in
            self?.goHome()
            
        } failureHandler: {[weak self] error in
            self?.delegate?.showMessage(title: "Erro",
                                        message: error.localizedDescription)
        }
    }
    
    func goHome() {
        self.delegate?.goHome()
    }
}
