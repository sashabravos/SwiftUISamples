//
//  SecondScreen.swift
//  SwiftUISamples
//
//  Created by Александра Кострова on 08.08.2023.
//

import SwiftUI

struct SecondScreen: View {
    var body: some View {
        ZStack {
            CustomColors.lighterBackground
            Text("Next page")
                .font(.largeTitle)
                .colorInvert()
        }
    }
}
