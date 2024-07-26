//
//  SmallArea1View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 26/07/2024.
//

import SwiftUI

struct SmallArea1View: View {
    
    let topText : String
    let bodyText : String
    let buttonText : String
    
    var body: some View {
        VStack {
            // Display Heading Text
                Text(topText)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.black)
                    .padding([.bottom, .top], 10)
            
            // Display Body Text
            Text(bodyText)
                .font(.system(size: 14))
                .fontWeight(.thin)
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
            
            Spacer()
        }
        .multilineTextAlignment(.center)
        .frame(width: 400, height: 150)
        .background(.white)
        .cornerRadius(10.0)
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 10)
                .stroke(.yellow, lineWidth: 1)
        )
    }
}

#Preview {
    SmallArea1View(topText: "I want to use Stack Putting", bodyText: "I want to purchase a subscription to Stack Putting separately from TheStack hardware.", buttonText: "Buy Now / Redeem Code")
}
