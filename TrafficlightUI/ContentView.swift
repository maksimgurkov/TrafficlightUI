//
//  ContentView.swift
//  TrafficlightUI
//
//  Created by Максим Гурков on 20.04.2023.
//

import SwiftUI

enum ColorView {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "Start"
    @State private var redAlfa = 0.3
    @State private var yellowAlfa = 0.3
    @State private var greenAlfa = 0.3
    
    @State private var colors = ColorView.red
    
    var body: some View {
        VStack {
            CircleView(color: .red, alfa: redAlfa, shadowColor: .red)
                .padding(.bottom)
            CircleView(color: .yellow, alfa: yellowAlfa, shadowColor: .yellow)
                .padding(.bottom)
            CircleView(color: .green, alfa: greenAlfa, shadowColor: .green)
            Spacer()
            ButtonView(title: buttonTitle) {
                buttonTitle = "Next"
                actionNextColor()
            }
        }
        .padding(.top)
    }
}

extension ContentView {
    private func actionNextColor() {
        let lightOne = 1.0
        let lightOf = 0.3
        
        switch colors {
        case .red:
            colors = .yellow
            redAlfa = lightOne
            greenAlfa = lightOf
        case .yellow:
            colors = .green
            redAlfa = lightOf
            yellowAlfa = lightOne
        case .green:
            colors = .red
            yellowAlfa = lightOf
            greenAlfa = lightOne
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
