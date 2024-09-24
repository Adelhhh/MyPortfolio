//
//  ReferencesView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-18.
//

import SwiftUI

struct Reference: Identifiable {
    let id = UUID()
    let name: String
    let jobTitle: String
    let workplace: String
    let phoneNumber: String
}

struct ReferencesView: View {
    let references = [
        Reference(name: "Björn Fogelberg", jobTitle: "UX-designer", workplace: "m4 solutions", phoneNumber: "tel://+46707996218"),
        Reference(name: "Henrik Ahlgren", jobTitle: "Education leader", workplace: "EC-Utbildning", phoneNumber: "tel://+46702743483"),
        Reference(name: "Christoffer Rosenkvist", jobTitle: "Section manager", workplace: "Malmö stad", phoneNumber: "tel://+46733705226"),
        Reference(name: "Kaveh Moghaddam", jobTitle: "Store manager", workplace: "Lidl Sweden", phoneNumber: "tel://+46700713444")
    ]
    
    var body: some View {
        NavigationView {
            List(references) { reference in
                Section {
                    VStack(alignment: .leading, spacing: 5) {
                        
                        HStack {
                            Text(reference.name)
                                .font(.headline)
                            
                            Spacer()
                        }
                        
                        
                        HStack {
                            Text(reference.jobTitle)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        HStack {
                            Text(reference.workplace)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            Button(action: {
                                if let url = URL(string: reference.phoneNumber) {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                HStack {
                                    Image(systemName: "phone")
                                        .foregroundColor(Color.white)
                                    Text(reference.phoneNumber.replacingOccurrences(of: "tel://", with: ""))
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                }
                                .padding(5.0)
                            }
                            .frame(height: 40.0)
                            .background(Color.blue)
                            .cornerRadius(5)
                            
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("REFERENCES")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .padding(.top, 20.0)
                    
                }
            }
        }
    }
}

struct ReferencesView_Previews: PreviewProvider {
    static var previews: some View {
        ReferencesView()
    }
}

