//
//  OurLivingUXView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct OurLivingUXView: View {
    var body: some View {
        VStack {
            BRFAPImageView(imageName: "OurLiving")
            ScrollView {
                VStack(spacing: 20) {
                    
                    Text("During my internship at OurLiving, a company that offers solar energy solutions and digital platforms for housing developers, I worked on several design projects and learned how to make things easy for users.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Project Overview:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("I was asked to redesign parts of OurLiving’s platform and create wireframes for a new website for a housing association. My goal was to make the website easier to use and help the board share information to reduce simple questions from residents.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Design Work:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Condominium Website: Created wireframes for both mobile and desktop.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    BRFAPImageView(imageName: "Desktopwireframe")
                    BRFAPImageView(imageName: "Mobilwireframe")

                    Text("OurLiving Platform Redesign: Focused on improving the FAQ page for better user experience.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    BRFAPImageView(imageName: "RedesignforOurLivingsplattform")
                    BRFAPImageView(imageName: "RedesignLOFI")

                    Text("Digital Stairwell Board: Designed Lo-Fi and Hi-Fi prototypes for a digital display in stairwells.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    BRFAPImageView(imageName: "DigiTavlanloFi")
                    BRFAPImageView(imageName: "DigiTavlanHiFi")
                    
                    Text("Research & Method:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Competitor Research: Studied similar websites to find useful ideas.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Interviews: Talked to users to understand their needs.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Affinity Mapping: Organized ideas to improve the design.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    BRFAPImageView(imageName: "OurLivingImage1")

                    Text("This internship helped me develop important skills in design, usability testing, and making digital products easier for people to use.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    

                    Spacer()
                    
                }
                .padding(.horizontal)
            }
        }
    }
}
struct OurLivingImageView: View {
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
    OurLivingUXView()
}
