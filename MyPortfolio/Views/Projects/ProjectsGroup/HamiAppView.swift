//
//  HamiAppView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct HamiAppView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack(spacing: 50) {
                    Image("HAMI-App")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                    
                    Text("I designed and created HamiApp, available on the App Store, as my first experience with Swift and SwiftUI. This all-in-one productivity app streamlines task management, expense tracking, and collaboration with features like intelligent reminders, quick expense capture, and flexible report generation, making it ideal for both individuals and teams.")
                    
                    Image("HAMI-App")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                    
                    Text("I designed and created HamiApp, available on the App Store, as my first experience with Swift and SwiftUI. This all-in-one productivity app streamlines task management, expense tracking, and collaboration with features like intelligent reminders, quick expense capture, and flexible report generation, making it ideal for both individuals and teams.")
                    
                }
                .padding(20)
            }
        }
    }
}

#Preview {
    HamiAppView()
}
