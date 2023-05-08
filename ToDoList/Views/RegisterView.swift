//
//  RegisterView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var registerViewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Registration", subTitle: "Register Yourself!!", rotationAngle: -15, backgroundColor: .orange)
            
            Form {
                TextField("Full Name", text: $registerViewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $registerViewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                SecureField("Password", text: $registerViewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Confirm Password", text: $registerViewModel.confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TDLButton(title: "Register", backgroundColor: .orange) {
                    registerViewModel.register()
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
