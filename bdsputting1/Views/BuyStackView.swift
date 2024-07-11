//
//  BuyStackView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 06/07/2024.
//

import SwiftUI

struct BuyStackView: View {
    
    let headerLogo : String
    let buttonText : String
    
    //            let screenSize: CGRect = UIScreen.main.bounds
    //            let screenWidth = screenSize.size.width
    //            let screenHeight = screenSize.size.height

    var body: some View {

        VStack {
            // Header Logo
            Image(headerLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 80.0)
                .offset(y: -20)
            
//            Spacer()
            
//            VStack(spacing: 10) {
//                SmallAreaView(topText: "I want to use Stack Putting", bodyText: "I want to purchase a subscription to Stack Putting separately from TheStack hardware.")
//                SmallAreaView(topText: "Hello Title", bodyText: "Body text")
//                SmallAreaView(topText: "Hello Title", bodyText: "Body text")
//                SmallAreaView(topText: "Hello Title", bodyText: "Body text")
//            }
            
//            Spacer()
            
            // Display Button to LoginView screen
//            NavigationLink(destination: LoginView()) {
//                (
//                    Text(buttonText)
//                    +
//                    Text(Image(systemName: "arrow.right"))
//                )
//                .bold()
//                .frame(width: 340, height: 40, alignment: .center)
//                .background(Color.yellow)
//                .foregroundColor(Color.black)
//                .cornerRadius(5)
//            }
//            Spacer()
        }
    }
}

#Preview {    
    BuyStackView(headerLogo: "TheStack_type_and_shield", buttonText: "I'm Stacked, Sign In ")
}

struct SmallAreaView: View {
    
    let topText : String
    let bodyText : String
    let buttonText : String = "Buy Now / Redeem Code"

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 11)
            .stroke(Color(.yellow), lineWidth: 1)
                .frame(width: 400, height: 120)
            
//            (alignment: .center)
            VStack {
                
                // Display Heading Text
                Text(topText)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(Color.black)
                    .offset(y: 45)

                // Display Body Text
                Text(bodyText)
                    .font(.system(size: 12))
                    .frame(width: 300, height: 120)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .offset(y: -5 )
                
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
                    .offset(y: -50)
                }
            }
        }
    }
}
