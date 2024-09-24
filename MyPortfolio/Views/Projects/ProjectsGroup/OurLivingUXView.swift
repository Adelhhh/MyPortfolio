//
//  OurLivingUXView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct OurLivingUXView: View {
    var body: some View {
        ScrollView {
                VStack(spacing: 50) {
                    Image("OurLiving")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                    
                    Text("In my Internship as a UX-designer, I designed of the OurLiving Website and a Digital Board as a New Platform")
                    
                    Image("OurLiving")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                    
                    Text("In my Internship as a UX-designer, I designed of the OurLiving Website and a Digital Board as a New Platform")
                }
                .padding(20)
        }   
    }
}

#Preview {
    OurLivingUXView()
}
