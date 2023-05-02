//
//  HeaderView.swift
//  ToDoList
//
//  Created by Anderson Sales on 02/05/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 15))
                
            VStack {
                Text("TO DO LIST")
                    .bold()
                    .font(.system(size: 50))

                Text("Get all your things done!")
                    .font(.system(size: 30))
            }
            .foregroundColor(.white)
            .padding(.top, 45)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
        Spacer()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
