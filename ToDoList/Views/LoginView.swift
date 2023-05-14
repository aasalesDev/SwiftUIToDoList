//
//  LoginView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct LoginView: View {
   @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "TO DO LIST", subTitle: "Get your things done!", rotationAngle: 15, backgroundColor: .blue)
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TDLButton(title: "Login", backgroundColor: .blue) {
                        viewModel.login()
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
