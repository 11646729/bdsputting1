//
//  SmallArea2View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 26/07/2024.
//

import SwiftUI

struct SmallArea2View: View {
    
    let topText : String
    let bodyText : String
    let buttonText : String
    let buttonText1 : String
    
    var body: some View {
            VStack {
                // Display Heading Text
                Text(topText)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.black)

                // Display Body Text
                Text(bodyText)
                    .font(.system(size: 14))
                    .fontWeight(.thin)
                    .frame(width: 380, height: 40)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
                // Display Button to LoginView screen
                NavigationLink(destination: LoginView()) {
                    Text(buttonText)
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .background(.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(5)
                }
                
                // Display Button to LoginView screen
                NavigationLink(destination: LoginView()) {
                    (
                        Text(buttonText1)
                        +
                        Text(Image(systemName: "arrow.up.right.circle"))
                    )
                    .bold()
                    .frame(width: 340, height: 40, alignment: .center)
                    .foregroundColor(.black)
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.yellow, lineWidth: 1)
                    )

                }
            }
            .multilineTextAlignment(.center)
            .frame(width: 400, height: 200)
            .background(.white)
            .cornerRadius(10.0)
            .overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.yellow, lineWidth: 1)
            )
        }
    }


#Preview {
    SmallArea2View(topText: "I have purchased TheStack hardware", bodyText: "My Stack just arrived, I'm ready to get started. Stack Putting is included!", buttonText: "Activate Serial Number",  buttonText1: "Buy Now ")
}
