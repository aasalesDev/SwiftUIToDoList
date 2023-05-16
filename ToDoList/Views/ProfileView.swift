//
//  ProfileView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                    .padding()
                
                VStack (alignment: .leading) {
                    HStack {
                        Text("Name: ")
                        Text("Anderson Sales")
                    }
                    .padding()
                    
                    HStack {
                        Text("Email: ")
                        Text("aasalesdev@gmail.com")
                    }
                    .padding()
                    
                    HStack {
                        Text("Member since: ")
                        Text("Anderson Sales")
                    }
                    .padding()
                }
                    
                Button {
                    viewModel.logOut()
                } label: {
                    Text("Log Out")
                }
                .tint(Color.red)
                .padding()

            }
            .navigationTitle("Profile")
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.mint)
            .ignoresSafeArea()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
