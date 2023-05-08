//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    
    init(){}
    
    func login() {
        guard validate() else {
            return
        }
        
        //Login with Firebase
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields!"
            return false
        }
        
        //Email validation
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email"
            return false
        }
        
        return true
    }
}
