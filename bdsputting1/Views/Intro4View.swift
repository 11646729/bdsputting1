//
//  Intro4View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 05/07/2024.
//

import SwiftUI

struct Intro4View: View {
    
    let topImage: String
    let topText: String
    let bottomText: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(Color.yellow, lineWidth: 3)
                .frame(width: 400, height: 600)
                .offset(y: -20)
            
            VStack {
                // Header Logo
                LogoView()
                
                VStack {
                    // Display Top Image
                    Image(topImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400.0, height: 300.0, alignment: .top)
                        .offset(x: 1, y: 3)
                    
                    // Display Heading Text
                    Text(topText)
                        .frame(width: 400, height: 80, alignment: .center)
                        .font(.system(size: 20))
                        .bold()
                    
                    // Display text
                    Text(bottomText)
                        .frame(width: 360, height: 80, alignment: .center)
                        .font(.system(size: 18))
                    
                    NavigationLink(destination: BuyStackView(headerLogo: "TheStack_type_and_shield", buttonText: "I'm Stacked, Sign In ")) {
                        (
                            Text("Login ")
                            +
                            Text(Image(systemName: "arrow.right"))
                        )
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .background(Color.yellow)
                        .foregroundColor(Color.black)
                        .cornerRadius(5)
                    }
                    
                    Spacer()
                }
                .multilineTextAlignment(.center)
            }
        }
        
    }
}

#Preview {
    Intro4View(topImage: "MattFitzpatrick", topText: "Matt Fitzpatrick after winning the 2022 US Open", bottomText: "Sasho MacKenzie gave me TheStack. I've been doing it religiously. It's like going to the gym basically ... and I'll be honest, it's worked wonders.")
}
