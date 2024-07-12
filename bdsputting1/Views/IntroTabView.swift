//
//  IntroTabView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 12/07/2024.
//

import SwiftUI

struct IntroTabView: View {
    var body: some View {
        TabView {
            IntroView(topImage: "IntroPicture1", topText: "Complete System for Biohacking Your Clubhead Speed", bottomText: "Speed training that works. Customizable hardware, protocols proven on Tour, and training made simple with TheStack App")

            Intro1View(topImage: "BenCrane", topText: "Ben Crane talking Stack Putting with Viktor Hovland", bottomText: "Stack Putting is the best way I have seen to practice your putting and get proper feedback for corrections")

            Intro1View(topImage: "SashoMacKenzie", topText: "Customized Programs from Golf's Leading Biomechanist", bottomText: "TheStack training programs are designed by Dr. Sasho MacKenzie. What started in his research lab is now proven with thousands of golfers and millions of swings.")

            Intro1View(topImage: "DaveCox", topText: "Your Personal Trainer for Maximizing Distance", bottomText: "TheStack App coaches you through each swing, delivers key performance metrics, and dynamically responds to every workout you do.")

            Intro1View(topImage: "MattFitzpatrick", topText: "Matt Fitzpatrick after winning the 2022 US Open", bottomText: "Sasho MacKenzie gave me TheStack. I've been doing it religiously. It's like going to the gym basically ... and I'll be honest, it's worked wonders.")

//            OnboardView(systemImageName: "scribble.variable", title: "SketchPad", description: "Great for jotting down your ideas and brainstorming your next feature.")
//            
//            OnboardView(systemImageName: "paintpalette.fill", title: "Color Picker", description: "Great for jotting down your ideas and brainstorming your next feature.")
//            
//            OnboardView(systemImageName: "dial.min.fill", title: "Custom Setting", description: "Great for jotting down your ideas and brainstorming your next feature.")
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    IntroTabView()
}

//struct OnboardView : View {
//    
//    let systemImageName: String
//    let title: String
//    let description: String
//    
//    var body: some View {
//        VStack(spacing: 20) {
//            Image(systemName: systemImageName)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.teal)
//            
//            Text(title)
//                .font(.title)
//                .bold()
//            
//            Text(description)
//                .multilineTextAlignment(.center)
//                .foregroundColor(.secondary)
//        }
//        .padding(.horizontal, 40)
//    }
//}
//
//#Preview {
//    OnboardView(systemImageName: "scribble.variable", title: "SketchPad", description: "Great for jotting down your ideas and brainstorming your next feature.")
//}