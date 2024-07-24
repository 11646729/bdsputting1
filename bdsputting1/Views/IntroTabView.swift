//
//  IntroTabView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 12/07/2024.
//

import SwiftUI

struct IntroTabView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
                    .ignoresSafeArea(.all)
                
                // Header Logo
                LogoView()

                TabView {
                    IntroView(topImage: "IntroPicture1", topText: "Complete System for Biohacking Your Clubhead Speed", bottomText: "Speed training that works. Customizable hardware, protocols proven on Tour, and training made simple with TheStack App")
                    
                    IntroView(topImage: "BenCrane", topText: "Ben Crane talking Stack Putting with Viktor Hovland", bottomText: "Stack Putting is the best way I have seen to practice your putting and get proper feedback for corrections")
                    
                    IntroView(topImage: "SashoMacKenzie", topText: "Customized Programs from Golf's Leading Biomechanist", bottomText: "TheStack training programs are designed by Dr. Sasho MacKenzie. What started in his research lab is now proven with thousands of golfers and millions of swings.")
                    
                    IntroView(topImage: "DaveCox", topText: "Your Personal Trainer for Maximizing Distance", bottomText: "TheStack App coaches you through each swing, delivers key performance metrics, and dynamically responds to every workout you do.")
                    
                    Intro4View(topImage: "MattFitzpatrick", topText: "Matt Fitzpatrick after winning the 2022 US Open", bottomText: "Sasho MacKenzie gave me TheStack. I've been doing it religiously. It's like going to the gym basically ... and I'll be honest, it's worked wonders.")
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
        }
    }
}

#Preview {
    IntroTabView()
        .preferredColorScheme(.dark)
}
