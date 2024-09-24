//
//  ReDesignBRFAPView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct ReDesignBRFAPView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack(spacing: 50) {
                    Image("AP1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                    
                    Text("In my thesis, I redesigned brfankarparkens.se, a platform for apartment owners and condominium management. By conducting competitor analysis and user testing, I improved navigation, added a search function, and simplified the 'For Residents' section with clear options for bookings, issue reporting, and board access.")
                    Image("AP1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                    
                    Text("In my thesis, I redesigned brfankarparkens.se, a platform for apartment owners and condominium management. By conducting competitor analysis and user testing, I improved navigation, added a search function, and simplified the 'For Residents' section with clear options for bookings, issue reporting, and board access.")
                    
                }
                .padding(20)
            }
        }
    }
}

#Preview {
    ReDesignBRFAPView()
}
