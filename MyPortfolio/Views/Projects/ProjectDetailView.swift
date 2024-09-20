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
                        .frame(height: 200)
                        .cornerRadius(10)
                }
               Text(description)
                    .font(.body)
                    .padding(.top, 10)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(title)
    }
}

#Preview {
    ProjectDetailView(title: "UX-Project 1", description: "This is a detailed description of UX project 1.", imageName: "ux_project_1")
}

