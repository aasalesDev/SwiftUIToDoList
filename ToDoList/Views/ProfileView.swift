//
//  ProfileView.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .background(Color.black)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                    
                NavigationLink("LOGOUT", destination: MainView())
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width * 0.5, height: 52)
                    .background(Color.black)
                    .cornerRadius(10)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.pink)
            .ignoresSafeArea()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
