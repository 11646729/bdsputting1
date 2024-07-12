//
//  Intro1View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 04/07/2024.
//

import SwiftUI

struct Intro1View: View {
    
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
                    
                    // Display Heading Text
                    Text(topText)
                        .frame(width: 400, height: 80, alignment: .center)
                        .font(.system(size: 20))
                        .bold()
                    
                    // Display text
                    Text(bottomText)
                        .frame(width: 360, height: 80, alignment: .center)
                        .font(.system(size: 18))
                    
                    Spacer()
                }
                .multilineTextAlignment(.center)
            }
        }
    }
}


#Preview {
    Intro1View(topImage: "BenCrane", topText: "Ben Crane talking Stack Putting with Viktor Hovland", bottomText: "Stack Putting is the best way I have seen to practice your putting and get proper feedback for corrections")
}
