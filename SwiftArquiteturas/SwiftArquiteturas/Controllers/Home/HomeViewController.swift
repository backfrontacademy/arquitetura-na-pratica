//
//  HomeViewController.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 08/10/2022.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    lazy var homeView: HomeView = {
        let view = HomeView(frame: .zero)
            
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray
    }
}

