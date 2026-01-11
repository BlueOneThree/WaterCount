//
//  LogoView.swift
//  WaterCount
//
//  Created by FUVE on 09/01/2026.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
            Text("Water Counter")
                .font(.system(.title, design: .rounded))
                .fontWeight(.heavy)
                .foregroundStyle(Color.colorThree)
            Text("Water Counter")
                .font(.system(.title, design: .rounded))
                .fontWeight(.heavy)
                .foregroundStyle(Color.colorFour)
                .scaleEffect(y: -1)
                .padding(.top, 55)
        }
    }
}

#Preview {
    LogoView()
}
