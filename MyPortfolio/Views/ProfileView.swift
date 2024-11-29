//
//  ProfileView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-17.
//

import SwiftUI

struct ProfileView: View {
    let experiences = [
        ("App-developer", "Sunny at sea", "Maj 2024 - Nov 2024", "Internship"),
        ("UX/UI-designer", "OurLiving", "Mars 2023 - June 2023", "Internship"),
        ("UX/UI-designer", "Columbus", "April 2022 - June 2022", "Internship"),
        ("Care Assistant", "Malmö stad", "July 2016 - present", "Contract"),
        ("Sale Assistant", "Lidl Sverige", "June 2013 - Aug 2020", "")
    ]
    
    let educations = [
        ("iOS/Android Developer", "MY.se - Sweden", "Sep 2023 - Nov 2024", "280 YH"),
        ("Web Development 1", "Komvux - Sweden", "May 2023 - Aug 2023", "100 YH"),
        ("UX/UI-designer", "EC-Utbildning - Sweden", "Aug 2021 - June 2023", "405 YHP"),
        ("Acting theater", "Azad University - Iran", "Dec 2002 - Maj 2006", "Bachelor's degree")
    ]
    
    var body: some View {
        VStack {
            Text("")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.top, 20)
            
            List {
                VStack(spacing: 10) {
                    Image("adelBild")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 3))
                        .shadow(radius: 5)
                        .padding()
                    
                    VStack(spacing: 10) {
                        Text("Adel Hassanpour")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                        
                        Text("iOS/Android-utvecklare")
                            .font(.title3)
                            .foregroundColor(.gray)
                        
                        Text("UX/UI-designer")
                            .font(.title3)
                            .foregroundColor(.gray)
                    }
                    .padding()
                    
                    VStack {
                        Text("A dynamic app developer with a passion for UX design, combining experience in both acting and programming to create exceptional user experiences. Published on the App Store and skilled in team collaboration, focused on delivering digital interactions that resonate with users.")
                            .font(.headline)
                            .fontWeight(.medium)
                            .padding(20.0)
                    }
                    .background(
                        LinearGradient(
                            colors: [.cyan, .white],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                        .cornerRadius(15)
                    )
                }
                .padding(.vertical, 20.0)
                
                Section(header: Text("Experiences").font(.title2).foregroundColor(Color.blue).bold()) {
                    ForEach(experiences, id: \.0) { experience in
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Text(experience.0)
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                              /*  if !experience.3.isEmpty {
                                    Text("(\(experience.3))")
                                        .font(.system(size: 12))
                                        .foregroundColor(.gray)
                                }
                               */
                            }
                            HStack {
                                Text(experience.1)
                                    .fontWeight(.medium)
                                    .font(.system(size: 14))
                                Spacer()
                                Text(experience.2)
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                
                Section(header: Text("Educations").font(.title2).foregroundColor(Color.blue).bold()) {
                    ForEach(educations, id: \.0) { education in
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Text(education.0)
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Spacer()
                                Text("(\(education.3))")
                                    .font(.system(size: 12))
                            }
                            HStack {
                                Text(education.1)
                                    .fontWeight(.medium)
                                    .font(.system(size: 14))
                                Spacer()
                                Text(education.2)
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

