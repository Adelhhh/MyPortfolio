//
//  SplashScreenView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-17.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("MyPortfolio.logo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    Text("My Portfolio")
                        .fontWeight(.black)
                        .foregroundColor(Color.blue)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 3)) {
                        self.size = 2
                        self.opacity = 10
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}

