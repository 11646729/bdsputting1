//
//  IntroView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 28/06/2024.
//

import SwiftUI

struct IntroView: View {
    
    let headerLogo : String
    let topImage: String
    let topText: String
    let bottomText: String
    let buttonText : String
    
    var body: some View {
        NavigationView{
            ZStack {
                RoundedRectangle(cornerRadius: 5.0)
                    .fill(Color.white)
                
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(Color.yellow, lineWidth: 3)
                    .frame(width: 400, height: 600)
                    .offset(y: -20)
                
                VStack {
                    // Header Logo
                    Image(headerLogo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 100.0)
                        .offset(y: -20)
                    
                    VStack {
                        // Display Top Image
                        Image(topImage)
                            .resizable()
                            .frame(width: 400.0, height: 300.0)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .offset(x: 1, y: -8)
                        
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
                    //                }
                    .multilineTextAlignment(.center)
                    
                    // Display Button to Intro2View screen
                    NavigationLink(destination: Intro1View(headerLogo: "TheStack_type_and_shield", topImage: "BenCrane", topText: "Ben Crane talking Stack Putting with Viktor Hovland", bottomText: "Stack Putting is the best way I have seen to practice your putting and get proper feedback for corrections", buttonText: "Continue ")
                    ) {
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
}

#Preview {
    IntroView(headerLogo: "TheStack_type_and_shield", topImage: "IntroPicture1", topText: "Complete System for Biohacking Your Clubhead Speed", bottomText: "Speed training that works. Customizable hardware, protocols proven on Tour, and training made simple with TheStack App", buttonText: "Continue ")
}

