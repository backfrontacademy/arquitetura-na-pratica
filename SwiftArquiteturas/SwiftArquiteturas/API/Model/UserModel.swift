//
//  UserModel.swift
//  SwiftArquiteturas
//
//  Created by Moacir Ezequiel Lamego on 07/09/2022.
//

import Foundation

struct UserModel: Codable {
    let email: String
    let password: String
    
    init() {
        self.email = String()
        self.password = String()
    }
    
    init(email: String, password:String) {
        self.email = email
        self.password = password
    }
}
