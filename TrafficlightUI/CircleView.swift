//
//  CircleView.swift
//  TrafficlightUI
//
//  Created by Максим Гурков on 20.04.2023.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let alfa: Double
    let shadowColor: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 130, height: 130)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(color: shadowColor, radius: 20)
            .opacity(alfa)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .green, alfa: 0.3, shadowColor: .green)
    }
}
    
