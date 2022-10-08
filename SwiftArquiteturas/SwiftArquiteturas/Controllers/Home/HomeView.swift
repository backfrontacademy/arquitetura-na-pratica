//
//  HomeView.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 08/10/2022.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem vindo a Home, você conseguiu!!!"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setVisualElements() {
        self.addSubview(helloLabel)
        
        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
    
    
}
