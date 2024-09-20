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
                Text("Contact me")
                    .font(.largeTitle)
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
        }
        .padding(20.0)
        .navigationTitle("Contact Me")
    }
}

#Preview {
    MyInfoView()
}
