//
//  UITextField+.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 08/10/2022.
//

import Foundation
import UIKit

extension UITextField {
    func setLeftPaddingPoints(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
