//
//  PersonView.swift
//  TrafficlightUI
//
//  Created by Максим Гурков on 20.04.2023.
//

import SwiftUI

struct PersonView: View {
    let stopAlfa: Double
    let goAlfa: Double
    
    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(.black)
                .frame(width: 80, height: 120)
                .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)

            VStack {
                Image(systemName: "figure.arms.open")
                    .resizable()
                    .frame(width: 30, height: 40)
                    .foregroundColor(.red)
                    .opacity(stopAlfa)
                Image(systemName: "figure.walk")
                    .resizable()
                    .frame(width: 30, height: 40)
                    .foregroundColor(.green)
                    .opacity(goAlfa)
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(stopAlfa: 0.3, goAlfa: 0.3)
    }
}
