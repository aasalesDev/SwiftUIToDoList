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
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading Profile...")
                }

            }
            .navigationTitle("Profile")
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .ignoresSafeArea()
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
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
                    Text(user.name)
                }
                .padding()
                
                HStack {
                    Text("Email: ")
                    Text(user.email)
                }
                .padding()
                
                HStack {
                    Text("Member since: ")
                    Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
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
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
