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
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
                .ignoresSafeArea(.all)
            
            // Header Logo
            LogoView()
                .navigationBarBackButtonHidden(true)
            
            VStack {
                SmallArea1View(topText: "I want to use Stack Putting", bodyText: "I want to purchase a subscription to Stack Putting separately from TheStack hardware.", buttonText: "Buy Now / Redeem Code")
                
                SmallArea2View(topText: "I have purchased TheStack hardware", bodyText: "My Stack just arrived, I'm ready to get started. Stack Putting is included!", buttonText: "Activate Serial Number",  buttonText1: "Buy Now ")
                
                SmallArea3View(bodyText: "I have a coaches license and am ready to train my players.", buttonText: "Activate Coaches License")
                
                SmallArea3View(bodyText: "My coach sent me a code, and I'm ready to start training.", buttonText: "Activate Code From My Coach")
                
                // Display Button to LoginView screen
                NavigationLink(destination: WaiversView(headerLogo: "TheStack_type_and_shield", headerText: "Training Disclaimer & Waivers", buttonText: "I Accept")) {
                    (
                        Text(buttonText)
                        +
                        Text(Image(systemName: "arrow.right"))
                    )
                    .bold()
                    .frame(width: 340, height: 40, alignment: .center)
                    .background(.white)
                    .foregroundColor(.black)
                    .border(.yellow, width: 1)
                    .cornerRadius(5)
                    .padding(.top, 20)
                }
            }
            .padding(.top, 36)
        }
    }
}

#Preview {    
    BuyStackView(headerLogo: "TheStack_type_and_shield", buttonText: "I'm Stacked, Sign In ")
}
