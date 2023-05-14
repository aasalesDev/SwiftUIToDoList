//
//  RegisterView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Registration", subTitle: "Register Yourself!!", rotationAngle: -15, backgroundColor: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Confirm Password", text: $viewModel.confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TDLButton(title: "Register", backgroundColor: .orange) {
                    viewModel.register()
                }
                .padding()
                
            }
            .frame(minHeight: UIScreen.main.bounds.height / 2.5)
            .offset(y: -50)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
     
    static var previews: some View {
        RegisterView()
    }
}
