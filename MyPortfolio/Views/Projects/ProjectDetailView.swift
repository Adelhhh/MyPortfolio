//
//  ProjectDetailView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-17.
//

import SwiftUI

struct ProjectDetailView: View {
    var title: String
    var description: String
    var imageName: String?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                if let imageName = imageName {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                
                if title == "Re-design of brfankarparken.se" {
                    ReDesignBRFAPView()
                }
                
                if title == "Internship at OurLiving" {
                    OurLivingUXView()
                }
                
                if title == "Internship at Columbus" {
                    ColumbusUXView()
                }
                
                if title == "HamiApp on App Store" {
                    HamiAppView()
                }
                
                if title == "TicTacToe" {
                    TicTacToeView()
                }
                
                if title == "MyPortfolio Project" {
                    MyPortfolioView()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(title)
    }
}

#Preview {
    ProjectDetailView(title: "My Portfolio App", description: "This app is designed to help users manage their daily tasks, expenses, and collaborations.", imageName: "project1_image")
}
