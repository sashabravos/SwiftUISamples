//
//  BlinkingTextButton.swift
//  SwiftUISamples
//
//  Created by Александра Кострова on 08.08.2023.
//

import SwiftUI

struct BlinkingTextButton: View {
    @State private var isHidden = true
    var onTap: () -> Void
    
    init(onTap: @escaping () -> Void) {
        self.onTap = onTap
    }
    
    var body: some View {
        Button("Next") {
            onTap()
        }
        .font(.system(size: 40, weight: .light))
        .foregroundColor(.white)
        .shadow(color: .blue, radius: 5.0)
        .opacity(isHidden ? 0 : 1)
        .animation(Animation.easeIn(duration: 0.9)
            .repeatForever(autoreverses: true), value: isHidden)
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    self.isHidden.toggle()
                    
                }
            }
        }
    }
}


