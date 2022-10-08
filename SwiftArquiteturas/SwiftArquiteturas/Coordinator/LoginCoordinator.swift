//
//  LoginCoordinator.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 08/10/2022.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = LoginViewController()
        
        viewController.onRegisterTap = {
            let coordinator = RegisterCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        viewController.onLoginSuccess = {
            let coordinator = HomeCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
