//
//  ResetButtonView.swift
//  WaterCount
//
//  Created by FUVE on 09/01/2026.
//

import SwiftUI

struct ResetButtonView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 131, height: 48)
                .cornerRadius(25)
                .foregroundStyle(Color.colorTwo)
            Text("Reset")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.heavy)
                .foregroundStyle(Color.colorThree)
        }
    }
}

#Preview {
    ResetButtonView()
}
