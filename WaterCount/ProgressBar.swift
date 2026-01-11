//
//  ProgressBar.swift
//  WaterCount
//
//  Created by FUVE on 09/01/2026.
//

import SwiftUI
struct ProgressBar: View {
    var glasse: Double
    var ringColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundStyle(Color.colorFour)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(glasse, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundStyle(ringColor)
                .rotationEffect(.degrees(270.0))
                .animation(.linear(duration: 0.5), value: glasse)
        }
    }
}
