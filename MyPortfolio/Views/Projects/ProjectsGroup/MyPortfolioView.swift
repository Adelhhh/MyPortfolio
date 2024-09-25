//
//  MyPortfolioView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//
import SwiftUI

struct MyPortfolioView: View {
    var body: some View {
        VStack {
            Text("")
            ScrollView {
                VStack(spacing: 20) {
                    PortfolioImageView(imageName: "MyPortfolioProject")
                    
                    Text("As a UX designer, I wanted the app to be simple, user-friendly, and designed with accessibility in mind, using contrasting colors that work for everyone. I added five tabs to allow users to easily navigate through different sections.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("In the center, I placed my profile, where I introduce myself.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    PortfolioImageView(imageName: "Profile")
                    
                    Text("The first tab on the left lets users view my projects, both UX design and programming, with each project including a detailed description.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack(spacing: 30) {
                        PortfolioImageView(imageName: "App-project")
                        PortfolioImageView(imageName: "UX-project")
                    }
                    
                    Text("The second tab contains my resume, where I’ve listed my work experience and education.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack(spacing: 30) {
                        PortfolioImageView(imageName: "CareerOverview1")
                        PortfolioImageView(imageName: "CareerOverview2")
                    }
                    Text("The third tab, right after my profile, showcases my references, with a call button for each reference, allowing users to contact them directly.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    PortfolioImageView(imageName: "References")
                    
                    Text("The fifth and final tab is 'Contact Me' where users can reach me via email, LinkedIn, or GitHub.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    PortfolioImageView(imageName: "Contacts")
                    Spacer()
                    VStack {
                        Link(destination: URL(string: "https://github.com/Adelhhh/MyPortfolio")!) {
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

struct PortfolioImageView: View {
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
    MyPortfolioView()
}
