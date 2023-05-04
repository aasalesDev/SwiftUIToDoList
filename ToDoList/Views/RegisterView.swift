//
//  RegisterView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct RegisterView: View {
    @State var email: String
    @State var password: String
    @State var confirmPassword: String
    
    var body: some View {
        VStack {
            HeaderView(title: "REGISTRATION", subTitle: "Register Yourself!!", rotationAngle: 345, backgroundColor: .orange)
                //.offset(y: -50)
            
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                    print("Login Button Pressed...")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        Text("LOGIN")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            .frame(minHeight: UIScreen.main.bounds.height / 4)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
     
    static var previews: some View {
        RegisterView(email: "", password: "", confirmPassword: "")
    }
}
