//
//  HomeCoordinator.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 08/10/2022.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = HomeViewController()
        viewController.modalPresentationStyle = .fullScreen
        self.navigationController.present(viewController, animated: true)
        //pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
