//
//  SplashView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 28/06/2024.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    let imageName : String

    var body: some View {

        ZStack {
            if self.isActive {
//                LoginView()
//                IntroView(headerLogo: "TheStack_type_and_shield", topImage: "IntroPicture1", topText: "Complete System for Biohacking Your Clubhead Speed", bottomText: "Speed training that works. Customizable hardware, protocols proven on Tour, and training made simple with TheStack App", buttonText: "Continue ")
            } else {
                Rectangle()
                    .fill(Color.white)
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}
    
#Preview {
    SplashView(imageName: "TheStack_type_and_shield")
}

