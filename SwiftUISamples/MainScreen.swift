//
//  ContentView.swift
//  SwiftUISamples
//
//  Created by Александра Кострова on 07.08.2023.
//

import SwiftUI

struct MainScreen: View {
    @State private var birdPosition: CGPoint = CGPoint(x: 0, y: 0)
    @State private var isHidden = true
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [CustomColors.lighterBackground, CustomColors.darkestBackground]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            
            BirdAnimation(birdPosition: $birdPosition, isHidden: $isHidden)
            
            VStack {
                Text("Hi, SwiftUI!")
                    .font(.system(size: 45, weight: .light))
                    .colorInvert()
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                
                BlinkingTextButton(onTap: moveBird)
            }
        }
    }
    
    private func moveBird() {
        birdPosition = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 3)
        isHidden = false
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
            .previewDevice("iPhone 14 Pro")
    }
}
