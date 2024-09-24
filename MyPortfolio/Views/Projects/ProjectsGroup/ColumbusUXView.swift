//
//  ColumbusUXView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct ColumbusUXView: View {
    var body: some View {
        ScrollView {
            
            VStack(spacing: 50) {
                Image("SportDesign")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                
                Text("Design of a Sports Website and App")
                
                Image("SportDesign")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                
                Text("Design of a Sports Website and App")
                
            }
            .padding(20)
        }
    }
}

#Preview {
    ColumbusUXView()
}
