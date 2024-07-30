//
//  SignInView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 18/07/2024.
//

import SwiftUI

struct SignInView: View {
    
    let headerText : String
    let buttonText : String
    let signinText : String = "By signing in here you accept our Terms of Use and Privacy Policy linked below. Contact us at info@thestacksystem.com with any questions. Always use the same method to sign in to access your saved data."

    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
                .ignoresSafeArea(.all)
            
            // Header Logo
            LogoView()
                .navigationBarBackButtonHidden(true)

            VStack {
                // Display Heading Title
                HeadingLineView(headerText : headerText)
                    .padding(.all, 12)

                // Display SignIn Notice
                Text(signinText)
                    .font(.system(size: 14))
                    .fontWeight(.thin)
                    .padding([.leading, .trailing], 12)
//                    .frame(width: 370, height: 420)
                    .multilineTextAlignment(.leading)

                Spacer()

                Text("View Legacy Sign In Options")
                    .font(.system(size: 12))
                    .underline()
                    .padding(.bottom, 20)

                // Display Button to SignInView screen
                NavigationLink(destination: ExpressDataEntryView()) {
                    (
                        Text(Image(systemName: "apple.logo")) + Text("  ") + Text(buttonText)
                    )
                    .font(.system(size: 20))
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                        .padding(.bottom, 20)
                }
            }
            .multilineTextAlignment(.center)
            .frame(width: 400, height: 500)
            .background(Color.white)
            .cornerRadius(10.0)
            .overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.yellow, lineWidth: 3)
            )
            .padding(.top, -50)
            
            Text("Terms of Use")
                .font(.system(size: 14))
                .underline()
                .offset(y: 320)
    
            Text("Privacy Policy")
                .font(.system(size: 14))
                .underline()
                .offset(y: 360)

        }
    }
}

#Preview {
    SignInView(headerText: "Sign In", buttonText: "Sign in with Apple")
}
