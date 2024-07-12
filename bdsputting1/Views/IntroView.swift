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
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(Color.yellow, lineWidth: 3)
                .frame(width: 400, height: 600, alignment: .top)
                .offset(y: -20)
            
            VStack {
                LogoView()
                
                VStack {
                    // Display Top Image
                    Image(topImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400.0, height: 300.0, alignment: .topLeading)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    
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
            }
        }
    }
}



#Preview {
    IntroView(topImage: "IntroPicture1", topText: "Complete System for Biohacking Your Clubhead Speed", bottomText: "Speed training that works. Customizable hardware, protocols proven on Tour, and training made simple with TheStack App")
}
