//
//  ContentView.swift
//  Maraphone-1-task
//
//  Created by kamaz on 02.12.2024.
//

import SwiftUI

fileprivate let redBarHeight: CGFloat = 50

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack(spacing: 5) {
                        ForEach(0..<101) {
                            Text("\($0)")
                                .foregroundStyle(.gray)
                                .font(.system(size: 20))
                                .frame(maxWidth: .infinity)
                        }
                        
                    }
                }
                .safeAreaInset(edge: .bottom) {
                    Color.red.opacity(0.5)
                        .frame(height: redBarHeight)
                }
                
            }.tabItem {
                Label("First",
                      systemImage: "star")
            }
        }
    }
}

#Preview {
    ContentView()
}
