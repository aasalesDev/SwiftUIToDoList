//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    init(){}
    
    func login() {
        
    }
}
