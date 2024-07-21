//
//  SignInView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 18/07/2024.
//

import SwiftUI

struct SignInView: View {
    var body: some View {

        Spacer(minLength: 10)

        // Header Logo
        LogoView()
        
        ZStack {

            Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
                .ignoresSafeArea(.all)

            VStack {

                ProductCardView(topImage: "IntroPicture1", topText: "Complete System for Biohacking Your Clubhead Speed", bottomText: "Speed training that works. Customizable hardware, protocols proven on Tour, and training made simple with TheStack App", imageHeight: 400, sizeWidth: 400, sizeHeight: 600)

                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SignInView()
}

struct ProductCardView: View {
    
    let topImage: String
    let topText: String
    let bottomText: String
    let imageHeight: CGFloat
    let sizeWidth: CGFloat
    let sizeHeight: CGFloat
    
    var body: some View {
        VStack {
            
            // Display Top Image
            Image(topImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: sizeWidth, height: imageHeight, alignment: .topLeading)
            
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
        .frame(width: sizeWidth, height: sizeHeight)
        .background(Color.white)
        .cornerRadius(20.0)
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 20)
                .stroke(.yellow, lineWidth: 3)
            )
    }
}
