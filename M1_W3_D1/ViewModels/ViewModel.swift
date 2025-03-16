//
//  ViewModel.swift
//  M1_W3_D1
//
//  Created by Taibah Valley Academy on 3/16/25.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var conifirmPassword: String = ""

    
}
