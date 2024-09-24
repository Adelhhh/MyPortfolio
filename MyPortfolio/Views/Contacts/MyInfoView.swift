//
//  MyInfoView.swift
//  MyPortfolio
//
//  Created by Adel on 2024-09-18.
//

import SwiftUI
import MessageUI

struct MyInfoView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var message: String = ""
    @State private var isShowingMailView = false
    @State private var result: Result<MFMailComposeResult, Error>? = nil
    
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("CONTACT ME")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
            }
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Name *")
                    .font(.headline)
                TextField("Your Name...", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 10)
                
                Text("Email Address *")
                    .font(.headline)
                TextField("Your Email Address...", text: $email)
                    .keyboardType(.emailAddress)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 10)
                
                Text("Message *")
                    .font(.headline)
                TextEditor(text: $message)
                    .frame(height: 150)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                    .padding(.bottom, 20)
                
                Button(action: {
                    self.isShowingMailView.toggle()
                }) {
                    Text("Send")
                        .font(.headline)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .disabled(!MFMailComposeViewController.canSendMail())
                .sheet(isPresented: $isShowingMailView) {
                    MailManagerView(isShowing: self.$isShowingMailView, result: self.$result, name: name, email: email, message: message)
                }
            }
            
            Spacer()
            
            ZStack {
                Divider()
                Text("OR")
                    .frame(width: 50.0, height: 20.0)
                    .background(Color.white)
            }
            Spacer()

            HStack(spacing: 20) {
                Link(destination: URL(string: "https://github.com/Adelhhh?tab=repositories")!) {
                    HStack {
                        Image("GitHub")
                            .foregroundColor(Color.white)
                        Text("GitHub")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                }
                
                Link(destination: URL(string: "https://www.linkedin.com/in/adel-hassanpour/")!) {
                    HStack {
                        Image("LinkedIn Circled")
                        Text("LinkedIn")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
            }
            .padding(.top, 20)
            .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .padding(20.0)
        .navigationTitle("Contact Me")
    }
}

#Preview {
    MyInfoView()
}
