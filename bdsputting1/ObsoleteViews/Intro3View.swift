//
//  Intro3View.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 05/07/2024.
//

import SwiftUI

struct Intro3View: View {
    
    let topImage: String
    let topText: String
    let bottomText: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(Color.yellow, lineWidth: 3)
                .frame(width: 400, height: 600)
                .offset(y: -40)
            
            VStack {
                // Header Logo
                LogoView()
                
//                Image(headerLogo)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150.0, height: 100.0)
//                    .offset(y: -60)
                
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
             }
        }
    }
}

#Preview {
    Intro3View(topImage: "DaveCox", topText: "Your Personal Trainer for Maximizing Distance", bottomText: "TheStack App coaches you through each swing, delivers key performance metrics, and dynamically responds to every workout you do.")
}
