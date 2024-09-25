//
//  HamiAppView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct HamiAppView: View {
    var body: some View {
        VStack {
            HamiImageView(imageName: "HAMI-App")
            ScrollView {
                VStack(spacing: 20) {
                    Text("HamiApp - A Productivity App!")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Effortlessly manage tasks, track expenses, and collaborate seamlessly in one user-friendly app. Key Features:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("1. Simplified Task Management: HamiApp keeps you organised with intelligent task reminders, making productivity a breeze.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("2. Track Costs in Motion: Capture quick receipts, categorise expenses, and effortlessly generate reports to stay on top of your finances.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("3. Managing People Made Easy: Create a list of people with associated expenses for streamlined management.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("4. Simple Collaboration: Collaborate seamlessly with others, enhancing your focus on work.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("5. Edit and Delete Functionality: Enjoy the ability to easily edit and delete names and costs as needed.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    Text("Why HamiApp? ")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("1. User-Friendly Interface: Intuitive design catering to users of all levels, ensuring a seamless experience.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("2. Focus on Your Work Through Collaboration: Enhance your work efficiency by collaborating with others within the app. Download HamiApp now and experience the simplicity of managing tasks, expenses, people, and collaboration in one place.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    VStack {
                        HStack(spacing: 20) {
                            Link(destination: URL(string: "https://github.com/Adelhhh/Hami")!) {
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
                            
                            Link(destination: URL(string: "https://apps.apple.com/se/app/hamiapp/id6476834663?l=en-GB")!) {
                                HStack {
                                    Image(systemName: "apple.logo")
                                        .foregroundColor(Color.white)
                                    Text("App Store")
                                }
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: 150, minHeight: 50)
                                .background(Color.blue)
                                .cornerRadius(10)
                            }
                        }
                        .padding(.top, 20)
                        .frame(maxWidth: .infinity)
                    }
                    .padding()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct HamiImageView: View {
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
    HamiAppView()
}
