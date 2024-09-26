//
//  NavBarView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-18.
//

import SwiftUI

struct NavBarView: View {
    
    @State private var selectedTab = 2
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ProjectsView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("Projekts")
                }
                .tag(0)
            
            CareerOverviewView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("CV")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(2)
            
            ReferencesView()
                .tabItem {
                    Image(systemName: "person.3.sequence.fill")
                    Text("References")
                }
                .tag(3)
            
            MyInfoView()
                .tabItem {
                    Image(systemName: "envelope.fill")
                    Text("Contact me")
                }
                .tag(4)
        }
    }
}

#Preview {
    NavBarView()
}
