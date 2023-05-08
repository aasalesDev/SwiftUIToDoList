//
//  HeaderView.swift
//  ToDoList
//
//  Created by Anderson Sales on 02/05/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let rotationAngle: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: rotationAngle))
                .offset(y: -150)
                
            VStack {
                Text(title)
                    .bold()
                    .font(.system(size: 45))

                Text(subTitle)
                    .font(.system(size: 25))
            }
            .offset(y: -100)
            .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        Spacer()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subTitle: "SubTitle", rotationAngle: 15, backgroundColor: .red)
    }
}
