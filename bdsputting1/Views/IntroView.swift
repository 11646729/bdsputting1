//
//  IntroView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 28/06/2024.
//

import SwiftUI

struct IntroView: View {
    
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
    IntroView(topImage: "IntroPicture1", topText: "Complete System for Biohacking Your Clubhead Speed", bottomText: "Speed training that works. Customizable hardware, protocols proven on Tour, and training made simple with TheStack App")
}
