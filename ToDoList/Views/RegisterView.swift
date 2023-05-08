//
//  RegisterView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String
    @State var email: String
    @State var password: String
    @State var confirmPassword: String
    
    var body: some View {
        VStack {
            HeaderView(title: "Registration", subTitle: "Register Yourself!!", rotationAngle: -15, backgroundColor: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TDLButton(title: "Register", backgroundColor: .orange) {
                    print("Uhul, I'm an action")
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
        RegisterView(name: "", email: "", password: "", confirmPassword: "")
    }
}
