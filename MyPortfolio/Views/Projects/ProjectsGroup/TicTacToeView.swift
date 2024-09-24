//
//  TicTacToeView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct TicTacToeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 50) {
                Image("TicTacToe")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 10)

                
                Text("TicTacToe is a android app")
                
                Image("TicTacToe")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 10)

                Text("TicTacToe is a android app")
                
            }
            .padding(20)
            
        }
    }
}

#Preview {
    TicTacToeView()
}
