//
//  User.swift
//  M1_W3_D1
//
//  Created by Taibah Valley Academy on 3/16/25.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let name: String
    let email: String
    let password: String
    let confirmedPassword: String
    let rememberMe: Bool
}
