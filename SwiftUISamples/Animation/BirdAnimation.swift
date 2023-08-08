//
//  BirdAnimation.swift
//  SwiftUISamples
//
//  Created by Александра Кострова on 08.08.2023.
//

import SwiftUI

struct BirdAnimation: View {
    @Binding var birdPosition: CGPoint
    @Binding var isHidden: Bool
    
    var body: some View {
        Image(systemName: "swift")
            .font(.system(size: 100.0))
            .shadow(color: CustomColors.birdShadow, radius: 15.0)
            .foregroundColor(.black)
            .position(birdPosition)
            .opacity(isHidden ? 0 : 1)
            .animation(Animation.easeIn(duration: 0.7), value: birdPosition)
    }
}
