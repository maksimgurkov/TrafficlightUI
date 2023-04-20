//
//  ButtonView.swift
//  TrafficlightUI
//
//  Created by Максим Гурков on 20.04.2023.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Capsule()
                    .frame(width: 200, height: 45)
                    .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                Text(title)
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Start", action: { })
    }
}
