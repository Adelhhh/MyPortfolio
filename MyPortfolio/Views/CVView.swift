//
//  CVView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-17.
//

import SwiftUI

struct CVView: View {
    @State private var showExperience = true
    @State private var showEducation = false
    
    enum ProjectCategory {
        case ux
        case programming
    }
    
    var body: some View {
        
            VStack {
                Text("Choose a Project Category")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding(.top, 20)
                
                HStack(spacing: 20) {
                    Button(action: {
                        showExperience.toggle()
                        showEducation = false
                    }) {
                        Text("Experiences")
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(showExperience ? Color.green : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        showEducation.toggle()
                        showExperience = false
                    }) {
                        Text("Educations")
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(showEducation ? Color.green : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                if showExperience {
                    VStack {
                        ScrollView {
                            VStack(alignment: .leading, spacing: 10) {
                                
                                HStack {
                                    Text("App-utvecklare")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.blue)
                                    Text("(Internship)")
                                        .font(.system(size: 12))
                                }
                                HStack {
                                    Text("Sunny at sea")
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                    Spacer()
                                    Text("Maj 2024 - Nov 2024")
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            Divider()
                                .padding()
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                HStack {
                                    Text("UX/UI-designer")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.blue)
                                    Text("(Internship)")
                                        .font(.system(size: 12))
                                }
                                HStack {
                                    Text("OurLiving")
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                    Spacer()
                                    Text("Mars 2023 - Juni 2023")
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            Divider()
                                .padding()
                            VStack(alignment: .leading, spacing: 10) {
                                
                                HStack {
                                    Text("UX/UI-designer")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.blue)
                                    Text("(Internship)")
                                        .font(.system(size: 12))
                                }
                                HStack {
                                    Text("Columbus")
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                    Spacer()
                                    Text("April 2022 - Juni 2022")
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            Divider()
                                .padding()
                            VStack(alignment: .leading, spacing: 10) {
                                
                                HStack {
                                    Text("Care Assistant")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.blue)
                                    Text("(Contract)")
                                        .font(.system(size: 12))
                                }
                                HStack {
                                    Text("Malmö stad")
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                    Spacer()
                                    Text("July 2016 - present")
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            Divider()
                                .padding()
                            VStack(alignment: .leading, spacing: 10) {
                                
                                HStack {
                                    Text("Sale Assistant")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.blue)
                                }
                                HStack {
                                    Text("Lidl Sverige")
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                    Spacer()
                                    Text("June 2013 - Aug 2020")
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                        }
                    }
                }
                if showEducation {
                    VStack {
                        ScrollView {
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack {
                                Text("iOS/Android Programmer")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.blue)
                                Spacer()
                                Text("(280 YH)")
                                    .font(.system(size: 12))
                            }
                            HStack {
                                Text("Malmö Yrkeshögskola - Sweden")
                                    .fontWeight(.medium)
                                    .font(.system(size: 14))
                                Spacer()
                                Text("Sep 2023 - Nov 2024")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding()
                        Divider()
                            .padding()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack {
                                Text("Web Development 1")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.blue)
                                Spacer()
                                Text("(100 YH)")
                                    .font(.system(size: 12))
                            }
                            HStack {
                                Text("Komvux - Sweden")
                                    .fontWeight(.medium)
                                    .font(.system(size: 14))
                                Spacer()
                                Text("May 2023 - Aug 2023")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding()
                        Divider()
                            .padding()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack {
                                Text("UX/UI-designer")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.blue)
                                Spacer()
                                Text("(405 YHP)")
                                    .font(.system(size: 12))
                            }
                            HStack {
                                Text("EC-Utbildning - Sweden")
                                    .fontWeight(.medium)
                                    .font(.system(size: 14))
                                Spacer()
                                Text("Aug 2021 - June 2023")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding()
                        Divider()
                            .padding()
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack {
                                Text("Acting theater")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.blue)
                                Spacer()
                                Text("(Bachelor's degree)")
                                    .font(.system(size: 12))
                            }
                            HStack {
                                Text("Azad University - Iran")
                                    .fontWeight(.medium)
                                    .font(.system(size: 14))
                                Spacer()
                                Text("Dec 2002 - Maj 2006")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding()
                        Divider()
                            .padding()
                    }
                }
            }
        }
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        CVView()
    }
}
