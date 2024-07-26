//
//  SmallArea3View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 26/07/2024.
//

import SwiftUI

struct SmallArea3View: View {
    
    let bodyText : String
    let buttonText : String
    
    var body: some View {
        VStack {
            // Display Body Text
            Text(bodyText)
                .font(.system(size: 14))
                .fontWeight(.thin)
                .frame(width: 380, height: 120)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
                .offset(y: -5 )
            
            // Display Button to LoginView screen
            NavigationLink(destination: LoginView()) {
                Text(buttonText)
                    .bold()
                    .frame(width: 340, height: 40, alignment: .center)
                    .background(Color.yellow)
                    .foregroundColor(Color.black)
                    .cornerRadius(5)
                    .offset(y: -50)
            }
        }
        .multilineTextAlignment(.center)
        .frame(width: 400, height: 120)
        .background(.white)
        .cornerRadius(10.0)
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 10)
                .stroke(.yellow, lineWidth: 1)
        )
    }
}

#Preview {
    SmallArea3View(bodyText: "I have a coaches license and am ready to train my players.", buttonText: "Activate Coaches License")
}
