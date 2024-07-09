//
//  Intro2View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 04/07/2024.
//

import SwiftUI

struct Intro2View: View {
    
    let headerLogo : String
    let topImage: String
    let topText: String
    let bottomText: String
    let buttonText : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .fill(Color.white)
            
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(Color.yellow, lineWidth: 3)
                .frame(width: 400, height: 600)
                .offset(y: -40)
            
            VStack {
                // Header Logo
                Image(headerLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 100.0)
                    .offset(y: -60)
                
                VStack {
                    // Display Top Image
                    Image(topImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400.0, height: 300.0)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .offset(x: 1, y: -46)
                    
                    // Display Heading Text
                    Text(topText)
                        .frame(width: 400, height: 80, alignment: .center)
                        .font(.system(size: 20))
                        .bold()
                        .offset(y: -40)
                    
                    // Display text
                    Text(bottomText)
                        .frame(width: 360, height: 100, alignment: .center)
                        .font(.system(size: 18))
                        .offset(y: -40)
                    
                    Spacer()
                }
                .multilineTextAlignment(.center)
                
                // Display Button to LoginView screen
                NavigationLink(destination: Intro3View(headerLogo: "TheStack_type_and_shield", topImage: "DaveCox", topText: "Your Personal Trainer for Maximizing Distance", bottomText: "TheStack App coaches you through each swing, delivers key performance metrics, and dynamically responds to every workout you do.", buttonText: "Continue ")) {
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
                    .offset(y: -20)
                }
            }
        }
    }
}

#Preview {
    Intro2View(headerLogo: "TheStack_type_and_shield", topImage: "SashoMacKenzie", topText: "Customized Programs from Golf's Leading Biomechanist", bottomText: "TheStack training programs are designed by Dr. Sasho MacKenzie. What started in his research lab is now proven with thousands of golfers and millions of swings.", buttonText: "Continue ")
}
