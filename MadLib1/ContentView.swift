//
//  ContentView.swift
//  MadLib1
//
//  Created by Erik Mikac on 1/30/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            ZStack {
                Color.blue.ignoresSafeArea()
                VStack {
                    Text("Welcome to Silly Sayings!")
                        .padding()
                    withAnimation(.spring()) {
                        NavigationLink(destination: Page1()) {
                            Text("Let's get started!")
                        }
                        .buttonStyle(NeumorphicButtonStyle(bgColor: .yellow))

                    }

                }

                
            }
            

        }

    } 
}

struct NeumorphicButtonStyle: ButtonStyle {
    var bgColor: Color

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .shadow(color: .white, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? -5: -15, y: configuration.isPressed ? -5: -15)
                        .shadow(color: .black, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? 5: 15, y: configuration.isPressed ? 5: 15)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(bgColor)
                }
        )
            .scaleEffect(configuration.isPressed ? 0.95: 1)
            .foregroundColor(.primary)
            
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
