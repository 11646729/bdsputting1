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
    Intro1View(topImage: "BenCrane", topText: "Ben Crane talking Stack Putting with Viktor Hovland", bottomText: "Stack Putting is the best way I have seen to practice your putting and get proper feedback for corrections")
}
