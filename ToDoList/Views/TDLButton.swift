//
//  TDLButton.swift
//  ToDoList
//
//  Created by Anderson Sales on 07/05/23.
//

import SwiftUI

struct TDLButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

struct TDLButton_Previews: PreviewProvider {
    static var previews: some View {
        TDLButton(title: "Button", backgroundColor: .blue){
            //Do the action here....
        }
    }
}
