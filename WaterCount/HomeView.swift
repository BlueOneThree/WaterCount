//
//  ContentView.swift
//  WaterCount
//
//  Created by FUVE on 09/01/2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.colorOne
                .ignoresSafeArea()
            VStack {
                LogoView()
                    Spacer()
                ProgressBarView()
                    Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
