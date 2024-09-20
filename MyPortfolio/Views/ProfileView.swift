//
//  ProfileView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-17.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("adelBild")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 5)
                .padding()
            
            VStack(spacing: 10){
                Text(" Adel Hassanpour")
                    .font(.largeTitle)
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
            
            Divider()
            
            VStack {
                Text("A dynamic app developer with a passion for UX design, combining experience in both acting and programming to create exceptional user experiences. Published on the App Store and skilled in team collaboration, focused on delivering digital interactions that resonate with users.")
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(20.0)
            }
            .cornerRadius(5)
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
