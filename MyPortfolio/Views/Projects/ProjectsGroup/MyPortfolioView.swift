//
//  MyPortfolioView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI
import AVKit

struct MyPortfolioView: View {
    var body: some View {
        ScrollView {
                VStack(spacing: 50) {
                    Image("MyPortfolioProject")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                    
                    Text("In my Internship as a iOS developer ")
                    
                    VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "test film", withExtension: "mp4")!))
                        .frame(width: 150 ,height: 200)
                        .aspectRatio(CGSize(width: 9, height: 16), contentMode: .fill)

                    Text("In my Internship as a iOS developer ")
                }
                .padding(20)
        }
    }
}

#Preview {
    MyPortfolioView()
}
