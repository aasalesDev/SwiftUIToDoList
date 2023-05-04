//
//  LoginView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "TO DO LIST", subTitle: "Get your things done!", rotationAngle: 15, backgroundColor: .blue)
                
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    SecureField("Password", text: $password)
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
                .frame(minHeight: UIScreen.main.bounds.height / 5)
                
                VStack {
                    Text("Do not have an account?")
                    
                    NavigationLink("Click here to create one", destination: RegisterView(email: "", password: "", confirmPassword: ""))
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
