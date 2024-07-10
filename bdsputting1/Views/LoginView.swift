//
//  LoginView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 24/06/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
//        NavigationView{
            VStack {
                // Header
                VStack{
                    Text("Login Page Title")
                        .font(.system(size: 30))
                        .bold()
                }
                
                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        // Attempt Log In
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                    .padding()
                }
                
                // Create Account
                VStack {
                    Text("New around here?")

                    NavigationLink("Create An Account", destination:     NewSessionView(headerText: "Start a New Session", completeSessionText: "Start Complete Session", expressSessionText: "Start Express Session")
                    )
                }
                
                Spacer()
            }
//        }
    }
}

#Preview {
    LoginView()
}
