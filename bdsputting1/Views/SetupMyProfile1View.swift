//
//  SetupMyProfile1View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 01/08/2024.
//

import SwiftUI

struct SetupMyProfile1View: View {
    
    @State var fullName = ""
    @State var authorisationValue = ""
    @State private var canWeContactYou = true
    
    let headerText : String = "Setup My Profile"
    let instructionsText : String = "Your biometrics will inform the A.I. and generate precision programming for you."

    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
                .ignoresSafeArea(.all)
            
            // Header Logo
            LogoView()
                .navigationBarBackButtonHidden(true)
            
            VStack {

                // Display Heading Title
                Text(headerText)
                    .font(.system(size: 18))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12)
                    .padding(.top, 15)

                // Display Instructions
                Text(instructionsText)
                    .font(.system(size: 16))
                    .fontWeight(.thin)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 12)
                    .multilineTextAlignment(.leading)

                TextField("Full Name", text: $fullName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 18))
                    .bold()
                    .padding(.init(top: 10, leading: 10, bottom: 10, trailing: 12))
                    .multilineTextAlignment(.leading)

                TextField("Authorisation", text: $authorisationValue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 18))
                    .bold()
                    .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 12))
                    .multilineTextAlignment(.leading)

                HStack {
//                    Text("Can we contact you?")
//                    Text("Updates, offers, information")

                    Toggle("Can we contact you?", isOn: $canWeContactYou)
                        .padding(.all, 12)
                }

                Spacer()
            }
            .multilineTextAlignment(.center)
            .frame(width: 400, height: 600)
            .background(Color.white)
            .cornerRadius(10.0)
//            .overlay( /// apply a rounded border
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(.yellow, lineWidth: 3)
//            )
            .padding(.top, -50)
        }
    }
}

#Preview {
    SetupMyProfile1View(fullName: "Brian Smith", authorisationValue: "4vfhcmkpk9@privaterelay.appleid.com")
}
