//
//  ReDesignBRFAPView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct ReDesignBRFAPView: View {
    var body: some View {
        VStack {
            BRFAPImageView(imageName: "AP1")
            ScrollView {
                VStack(spacing: 20) {
                    
                    Text("As part of my thesis, I re-designed brfankarparken.se, a digital platform for the Ankarparken condominium association in Malmö, using the Design Sprint method. The website serves 107 apartments and offers a variety of services to facilitate property management.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Project Objective:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("The goal of this redesign was to improve the user experience for apartment owners and simplify how they access essential services and information on the website. My key question was: How do apartment owners use equipment and services on Ankarparken's website?")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Methodology:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("I used the Design Sprint method, which is a fast-paced process for developing solutions in a limited time. To gather insights, I conducted a competitor analysis and a questionnaire survey to understand how other housing association websites are designed and what features they offer.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Key Features:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Search Functionality: A prominent search bar in the navigation menu to make finding information easier.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Improved Navigation: Simplified categories under For Residents with clear buttons for Booking, Error Reporting, and Board Access.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("User Testing: I tested the prototype with two apartment owners, making further adjustments based on their feedback. This project emphasized creating a user-friendly and efficient interface for residents to easily access the services they need.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    BRFAPImageView(imageName: "SkissBRF")
                    BRFAPImageView(imageName: "PrototypingBRF")
                    BRFAPImageView(imageName: "PrototypingBRF2")

                    Spacer()
                    
                    VStack {
                        Link(destination: URL(string: "https://www.figma.com/proto/PN88fUxD4UFk01F19Mh9nh/Examensarbete-%2F-Ankarparken?node-id=1-1524&scaling=min-zoom&page-id=0%3A1&starting-point-node-id=1%3A3554")!) {
                            HStack {
                                Image("Figma")
                                    .foregroundColor(Color.white)
                                Text("Figma")
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

struct BRFAPImageView: View {
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
    ReDesignBRFAPView()
}
