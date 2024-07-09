//
//  BuyStackView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 06/07/2024.
//

import SwiftUI

struct BuyStackView: View {
    
    let topText : String = "Hello Title"
    let bodyText : String = "Body text"
    let buttonText : String
    
    var body: some View {
        VStack(spacing: 20) {
            
            //            let screenSize: CGRect = UIScreen.main.bounds
            //            let screenWidth = screenSize.size.width
            //            let screenHeight = screenSize.size.height
            
            VStack {
                                
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(Color.yellow, lineWidth: 1)
                    .frame(width: 400, height: 150)

                // Display Heading Text
                Text(topText)
//                    .frame(width: 400, height: 80, alignment: .center)
                    .font(.system(size: 20))
                    .bold()
                    .offset(y: -130)
                
                // Display text
                Text(bodyText)
                    .frame(width: 360, height: 100, alignment: .center)
                    .font(.system(size: 18))
                    .offset(y: -40)
                
                Spacer()
                
            }
            
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(Color.yellow, lineWidth: 1)
                .frame(width: 400, height: 150)
            
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(Color.yellow, lineWidth: 1)
                .frame(width: 400, height: 150)
            
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(Color.yellow, lineWidth: 1)
                .frame(width: 400, height: 150)
            
            // Display Button to LoginView screen
            NavigationLink(destination: LoginView()) {
                (
                    Text(buttonText)
                    +
                    Text(Image(systemName: "arrow.right"))
                )
                .bold()
                .frame(width: 340, height: 40, alignment: .center)
                .background(Color.yellow)
                .foregroundColor(Color.black)
                .cornerRadius(5)
            }
        }
    }
}

#Preview {
    BuyStackView(buttonText: "I'm Stacked, Sign In ")
}
