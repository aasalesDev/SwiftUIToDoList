//
//  LoginView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct LoginView: View {
   @StateObject var loginViewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "TO DO LIST", subTitle: "Get your things done!", rotationAngle: 15, backgroundColor: .blue)
                
                Form {
                    
                    if !loginViewModel.errorMessage.isEmpty {
                        Text(loginViewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $loginViewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $loginViewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TDLButton(title: "Login", backgroundColor: .blue) {
                        loginViewModel.login()
                    }
                    .padding()
                }
                .frame(minHeight: UIScreen.main.bounds.height / 5)
                
                VStack {
                    Text("Do not have an account?")
                    
                    NavigationLink("Click here to create one", destination: RegisterView())
                }
                .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
