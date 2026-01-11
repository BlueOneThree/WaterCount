//
//  ProgressBarView.swift
//  WaterCount
//
//  Created by FUVE on 09/01/2026.
//

import SwiftUI

struct ProgressBarView: View {
    @State private var glasse = 0.7
    
    // text statut
    
    var statusText: String {
           switch glasse {
           case 0:
               return "Dry Start"
           case 0..<0.25:
               return "Thirsty"
           case 0.25..<0.5:
               return "Hydrated"
           case 0.5..<0.75:
               return "Afloat"
           case 0.75...1:
               return "On Point"
           default:
               return "Nailed"
           }
       }
    
    var body: some View {
        VStack {
            ZStack {
                ProgressBar(glasse: glasse, ringColor: .colorThree)
                    .frame(width: 300, height: 300)
                    .padding(100)
                Text(statusText)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.colorThree)
            }
            
            HStack {
                Button(action : {
                    glasse = 0
                }, label: {
                    ResetButtonView()
                })
                Button(action : {
                    glasse += 0.16666667
                }, label : {
                    AddButtonView()
                })
            }
        }
    }
}

#Preview {
    ProgressBarView()
}
