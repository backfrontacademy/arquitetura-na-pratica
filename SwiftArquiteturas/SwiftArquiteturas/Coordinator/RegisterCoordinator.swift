//
//  RegisterCoordinator.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 08/10/2022.
//

import Foundation
import UIKit


class RegisterCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = RegisterViewController()
        
        viewController.onRegisterSuccess = {
            let coordinator = HomeCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
