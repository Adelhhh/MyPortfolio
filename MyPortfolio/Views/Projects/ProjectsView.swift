//
//  ProjectsView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-17.
//

import SwiftUI

struct ProjectsView: View {
    
    @State private var selectedCategory: ProjectCategory = .programming
    
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
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        if selectedCategory == .ux {
                            NavigationLink(destination: ProjectDetailView(title: "Re-design of brfankarparken.se", description: "")) {
                                ProjectItem(title: "Re-design of brfankarparken.se", description: "In my thesis, I redesigned brfankarparkens.se, a platform for apartment owners and condominium management. By conducting competitor analysis and user testing, I improved navigation, added a search function, and simplified the 'For Residents' section with clear options for bookings, issue reporting, and board access.", imageName: "AP1")
                            }
                            .padding()
                            
                            Divider()
                            
                            NavigationLink(destination: ProjectDetailView(title: "Internship at OurLiving", description: "")) {
                                ProjectItem(title: "Internship at OurLiving", description: "Design of the OurLiving Website and a Digital Board as a New Platform", imageName: "OurLiving")
                            }
                            .padding()
                            
                            Divider()
                            
                            NavigationLink(destination: ProjectDetailView(title: "Internship at Columbus", description: "")) {
                                ProjectItem(title: "Internship at Columbus", description: "Design of a Sports Website and App", imageName: "SportDesign")
                            }
                            .padding()
                            
                            Divider()
                            
                        } else {
                            NavigationLink(destination: ProjectDetailView(title: "MyPortfolio Project", description: "")) {
                                ProjectItem(title: "My Portfolio-App", description: "MyPortfolio is an app that showcases my UX-design and programming projects. It highlights my skills in design and development, following key portfolio principles. The app offers a interactive way to explore my work, making it easy for you to see my expertise in UX/UI and app development.", imageName: "MyPortfolioProject")
                            }
                            .padding()
                            
                            Divider()
                            
                            NavigationLink(destination: ProjectDetailView(title: "HamiApp on App Store", description: "")) {
                                ProjectItem(title: "HAMI", description: "I designed and created HamiApp, available on the App Store, as my first experience with Swift and SwiftUI. This all-in-one productivity app streamlines task management, expense tracking, and collaboration with features like intelligent reminders, quick expense capture, and flexible report generation, making it ideal for both individuals and teams.", imageName: "HAMI-App")
                            }
                            .padding()
                            
                            Divider()
                            
                            NavigationLink(destination: ProjectDetailView(title: "TicTacToe", description: "")) {
                                ProjectItem(title: "TicTacToe", description: "TicTacToe or XO is an Android app I built using Kotlin during my Android course. The classic game, also known as noughts and crosses or Xs and Os, is for two players who take turns marking a 3x3 grid with X or O. The first player to align three marks in a row, either horizontally, vertically, or diagonally, wins the game.", imageName: "TicTacToe")
                            }
                            .padding()
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
