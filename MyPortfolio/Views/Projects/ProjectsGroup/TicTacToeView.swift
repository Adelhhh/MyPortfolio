//
//  TicTacToeView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct TicTacToeView: View {
    var body: some View {
        VStack {
            XOImageView(imageName: "TicTacToe")
            ScrollView {
                VStack(spacing: 20) {
                    Text("Tic Tac Toe (also known as XO or Noughts and Crosses) is a simple and accessible Android app I built using Kotlin during my Android development course.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Designed with user-friendliness and accessibility in mind, the app features contrasting colors to ensure it’s easy to use for everyone. This classic two-player game involves taking turns marking a 3x3 grid with Xs or Os, and the goal is to be the first to line up three marks in a row—horizontally, vertically, or diagonally.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    VStack {
                        Link(destination: URL(string: "https://github.com/Adelhhh/TicTacToeXO")!) {
                            HStack {
                                Image("GitHub")
                                    .foregroundColor(Color.white)
                                Text("GitHub")
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: 150, minHeight: 50)
                            .background(Color.black)
                            .cornerRadius(10)
                        }
                    }
                    .padding()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct XOImageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 200)
            .frame(alignment: .center)
    }
}
#Preview {
    TicTacToeView()
}
