//
//  ProjectItemView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-18.
//

import SwiftUI

struct ProjectItem: View {
    var title: String
    var description: String
    var imageName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .shadow(radius: 5)
            
            Text(title)
                .font(.headline)
                .multilineTextAlignment(.leading)
            
            Text(description)
                .font(.subheadline)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
        }
        .padding(.bottom, 20)
    }
}

struct ProjectItem_Previews: PreviewProvider {
    static var previews: some View {
        ProjectItem(
            title: "", description: "This is a detailed description of UX project 1.",
            imageName: "ux_project_1")
    }
}
