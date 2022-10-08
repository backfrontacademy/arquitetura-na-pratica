//
//  Coordinator.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 08/10/2022.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    
    func start()
    
    init(navigationController: UINavigationController)
}
