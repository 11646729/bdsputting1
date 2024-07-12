//
//  Intro2View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 04/07/2024.
//

import SwiftUI

struct Intro2View: View {
    
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
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400.0, height: 300.0, alignment: .top)
                        .offset(y: 3)
                    
                    // Display Heading Text
                    Text(topText)
                        .frame(width: 400, height: 80, alignment: .center)
                        .font(.system(size: 20))
                        .bold()
                    
                    // Display text
                    Text(bottomText)
                        .frame(width: 360, height: 100, alignment: .center)
                        .font(.system(size: 18))
                    
                    Spacer()
                }
                .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    Intro2View(topImage: "SashoMacKenzie", topText: "Customized Programs from Golf's Leading Biomechanist", bottomText: "TheStack training programs are designed by Dr. Sasho MacKenzie. What started in his research lab is now proven with thousands of golfers and millions of swings.")
}
