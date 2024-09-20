//
//  CareerOverviewView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-20.
//

import SwiftUI

struct CareerOverviewView: View {
    let experiences = [
        ("App-utvecklare", "Sunny at sea", "Maj 2024 - Nov 2024", "Internship"),
        ("UX/UI-designer", "OurLiving", "Mars 2023 - Juni 2023", "Internship"),
        ("UX/UI-designer", "Columbus", "April 2022 - Juni 2022", "Internship"),
        ("Care Assistant", "Malmö stad", "July 2016 - present", "Contract"),
        ("Sale Assistant", "Lidl Sverige", "June 2013 - Aug 2020", "")
    ]
    
    let educations = [
        ("iOS/Android Programmer", "MY.se - Sweden", "Sep 2023 - Nov 2024", "280 YH"),
        ("Web Development 1", "Komvux - Sweden", "May 2023 - Aug 2023", "100 YH"),
        ("UX/UI-designer", "EC-Utbildning - Sweden", "Aug 2021 - June 2023", "405 YHP"),
        ("Acting theater", "Azad University - Iran", "Dec 2002 - Maj 2006", "Bachelor's degree")
    ]
    
    var body: some View {
            VStack {
                Text("")
                List {
                    Section(header: Text("Experiences").font(.title).foregroundColor(Color.blue).bold().padding(.vertical)) {
                        ForEach(experiences, id: \.0) { experience in
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text(experience.0)
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    if !experience.3.isEmpty {
                                        Text("(\(experience.3))")
                                            .font(.system(size: 12))
                                    }
                                }
                                HStack {
                                    Text(experience.1)
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                    Spacer()
                                    Text(experience.2)
                                        .font(.system(size: 14))
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.vertical, 15)
                        }
                    }
                    
                    Section(header: Text("Educations").font(.title).foregroundColor(Color.blue).bold().padding(.vertical)) {
                        ForEach(educations, id: \.0) { education in
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text(education.0)
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text("(\(education.3))")
                                        .font(.system(size: 12))
                                }
                                HStack {
                                    Text(education.1)
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                    Spacer()
                                    Text(education.2)
                                        .font(.system(size: 14))
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.vertical, 5)
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
    }
}

struct CareerOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        CareerOverviewView()
    }
}

