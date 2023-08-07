//
//  ContentView.swift
//  SwiftUISamples
//
//  Created by Александра Кострова on 07.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var birdPosition: CGPoint = CGPoint(x: 50, y: 200)
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(hex: 0x168AC6), Color(hex: 0x011968)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            
            Image(systemName: "swift")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.black)
                .position(birdPosition)
                .animation(.easeIn(duration: 1.0))
            Text("Hi, SwiftUI!")
                .font(.system(size: 45, weight: .light))
                .colorInvert()
        }
        .onTapGesture {
            withAnimation {
                self.moveBird()
            }
        }
    }
    
    private func moveBird() {
        birdPosition = CGPoint(x: birdPosition.x + 50, y: birdPosition.y)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
