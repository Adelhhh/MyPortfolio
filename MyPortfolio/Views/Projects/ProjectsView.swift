//
//  ProjectsView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-17.
//

import SwiftUI

struct ProjectsView: View {
    
    @State private var selectedCategory: ProjectCategory = .ux
    
    enum ProjectCategory {
        case ux
        case programming
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Choose a Project Category")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding(.top, 20)
                HStack {
                        Button(action: {
                            selectedCategory = .ux
                        }) {
                            Text("UX/UI-design")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(selectedCategory == .ux ? Color.green : Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    
                        Button(action: {
                            selectedCategory = .programming
                        }) {
                            Text("Development")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(selectedCategory == .programming ? Color.green : Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        if selectedCategory == .ux {
                            NavigationLink(destination: ProjectDetailView(title: "Re-design of brfankarparken.se", description: "This is a detailed description of UX project 1.")) {
                                ProjectItem(title: "Re-design of brfankarparken.se", description: "In my thesis, I redesigned brfankarparkens.se, a platform for apartment owners and condominium management. By conducting competitor analysis and user testing, I improved navigation, added a search function, and simplified the 'For Residents' section with clear options for bookings, issue reporting, and board access.", imageName: "AP1")
                            }
                            .padding()
                            
                            Divider()
                            
                            NavigationLink(destination: ProjectDetailView(title: "Internship at OurLiving", description: "This is a detailed description of UX project 2.")) {
                                ProjectItem(title: "Internship at OurLiving", description: "Design of the OurLiving Website and a Digital Board as a New Platform", imageName: "OurLiving")
                            }
                            .padding()
                            
                            Divider()
                            
                            NavigationLink(destination: ProjectDetailView(title: "Internship at Columbus", description: "This is a detailed description of UX project 2.")) {
                                ProjectItem(title: "Internship at Columbus", description: "Design of a Sports Website and App", imageName: "SportDesign")
                            }
                            .padding()
                            
                            Divider()
                            
                        } else {
                            NavigationLink(destination: ProjectDetailView(title: "HamiApp on App Store", description: "This is a detailed description of Programming Project 1.")) {
                                ProjectItem(title: "HamiApp on App Store", description: "I designed and created HamiApp, available on the App Store, as my first experience with Swift and SwiftUI. This all-in-one productivity app streamlines task management, expense tracking, and collaboration with features like intelligent reminders, quick expense capture, and flexible report generation, making it ideal for both individuals and teams.", imageName: "HAMI-App")
                            }
                            
                            Divider()
                            
                            NavigationLink(destination: ProjectDetailView(title: " project 2", description: "This is a detailed description of Programming Project 2.")) {
                                ProjectItem(title: " project 2", description: "This is a detailed description of Programming Project 2", imageName: "HAMI-App")
                            }
                            
                            Divider()
                            
                            NavigationLink(destination: ProjectDetailView(title: " project 3", description: "This is a detailed description of Programming Project 3.")) {
                                ProjectItem(title: " project 3", description: "This is a detailed description of Programming Project 3", imageName: "HAMI-App")
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ProjectsView()
}
