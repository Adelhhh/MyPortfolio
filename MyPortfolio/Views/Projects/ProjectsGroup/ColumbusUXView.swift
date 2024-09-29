//
//  ColumbusUXView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-23.
//

import SwiftUI

struct ColumbusUXView: View {
    var body: some View {
        VStack {
            BRFAPImageView(imageName: "SportDesign")
            ScrollView {
                VStack(spacing: 20) {
                    
                    Text("Columbus is an IT consulting company with over 2000 employees worldwide. The company focuses on developing, implementing, and maintaining digital business solutions. During my first internship at Columbus, I had a fantastic opportunity to learn a lot about UX and UI design from the experts there.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Project Task:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("My mentor assigned me the task of designing a sports website. I started by conducting competitive research on various sports websites to understand their design. After that, I created Lo-Fi and Hi-Fi prototypes.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    BRFAPImageView(imageName: "ColombusLoFi")
                    BRFAPImageView(imageName: "WebPro1")
                    
                    Text("Challenges and Improvements:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("After receiving feedback from my mentor, who was not satisfied with certain details like colors and images, I redesigned the prototype. I also created a style guide to ensure that all design choices were consistent and clear. Then, I redesigned a new Hi-Fi prototype for both the website and mobile wireframe.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack {
                        Text("Desktop Wireframe:")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color.blue)
                        BRFAPImageView(imageName: "WebPro2")
                        Link(destination: URL(string: "https://www.figma.com/proto/obc6FQeYnMKnydI1wkCUV2/Sport-webbsida?node-id=211-3495&scaling=scale-down&page-id=0%3A1&starting-point-node-id=211%3A3495&show-proto-sidebar=1")!) {
                            HStack {
                                Image("Figma")
                                    .foregroundColor(Color.white)
                                Text("Figma")
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: 150, minHeight: 50)
                            .background(Color.black)
                            .cornerRadius(10)
                        }
                    }
                    .padding()
                    Divider()
                    VStack {
                        
                        Text("Mobile App Wireframe:")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color.blue)
                        BRFAPImageView(imageName: "MobileAppWireframe")
                        
                        Spacer()
                        Link(destination: URL(string: "https://www.figma.com/proto/obc6FQeYnMKnydI1wkCUV2/Sport-webbsida?node-id=377-1604&scaling=scale-down&page-id=377%3A1603&starting-point-node-id=377%3A1604&show-proto-sidebar=1")!) {
                            HStack {
                                Image("Figma")
                                    .foregroundColor(Color.white)
                                Text("Figma")
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: 150, minHeight: 50)
                            .background(Color.black)
                            .cornerRadius(10)
                        }
                        .padding()
                    }
                    .padding()
                    Divider()
                    
                    VStack {
                        Text("Mobile App Wireframe in Browser:")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color.blue)
                        BRFAPImageView(imageName: "MobileAppWireframeinBrowser")
                        
                        Spacer()
                        Link(destination: URL(string: "https://www.figma.com/proto/obc6FQeYnMKnydI1wkCUV2/Sport-webbsida?node-id=377-1604&scaling=scale-down&page-id=377%3A1603&starting-point-node-id=377%3A1604&show-proto-sidebar=1")!) {
                            HStack {
                                Image("Figma")
                                    .foregroundColor(Color.white)
                                Text("Figma")
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: 150, minHeight: 50)
                            .background(Color.black)
                            .cornerRadius(10)
                        }
                        .padding()
                        
                    }
                    .padding()
                    Text("Key Learnings:")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("During my internship, I learned to work with agile methods, attending stand-up meetings every morning and collaborating with other UX designers in the company. I also learned how to create a style guide and how to structure an e-commerce website.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("This was a valuable experience for me as a UX design student during my first internship in the UX program.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ColombusUXImageView: View {
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
    ColumbusUXView()
}
