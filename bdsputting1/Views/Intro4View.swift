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
        VStack {
            // Display Top Image
            Image(topImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400.0, height: 315.0, alignment: .top)
                .padding(.bottom, 20)
            
            // Display Heading Text
            Text(topText)
                .font(.system(size: 20))
                .bold()
                .padding(.bottom, 30)
            
            // Display text
            Text(bottomText)
                .frame(width: 360, height: 80, alignment: .center)
                .font(.system(size: 18))
                .padding(.bottom, 10)
            
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
        .frame(width: 400, height: 600)
        .background(Color.white)
        .cornerRadius(10.0)
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 10)
                .stroke(.yellow, lineWidth: 3)
        )
        .padding(.top, -50)
    }
}

#Preview {
    Intro4View(topImage: "MattFitzpatrick", topText: "Matt Fitzpatrick after winning the 2022 US Open", bottomText: "Sasho MacKenzie gave me TheStack. I've been doing it religiously. It's like going to the gym basically ... and I'll be honest, it's worked wonders.")
}
