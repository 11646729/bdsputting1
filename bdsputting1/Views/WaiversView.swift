//
//  WaiversView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 16/07/2024.
//

import SwiftUI

struct WaiversView: View {
    
    let headerLogo : String
    let headerText : String
    let buttonText : String
    let warrantyText : String = "All training protocols within the TheStack App involve considerable physical exercise and a full range of motion.\n\rYou should always consult a physician or health care provider before starting any exercise or sports program, especially if you have any pre-existing conditions or injuries.\n\rYou should ensure your training area is safe and free of other equipemnt, trainees and observers. You should never swing towards anyone or in the direction of anything that can be damaged by the training device - either towards or behind your target line. You should never impact the ground, a ball, or impact bag with the training device and avoid bouncing the device off your body while training. By participating in this course of training, you acknowledge and agree to the terms of this disclaimer and waiver. You hereby release The Stack System and it's employees, from any claim for injury, damage, whether present or future, of any sort, arising from your participation in the course of instruction.\n\rYou, the trainee also assume acknowledgement that individual results may vary based on your own performance characteristics."
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
                .ignoresSafeArea(.all)
            
            // Header Logo
            LogoView()
                .navigationBarBackButtonHidden(true)

            VStack {
                // Display Heading Title
                HeadingLineView(headerText : headerText)
                    .padding(.all, 12)
                    .padding(.top, 30)
                
                // Display Warranty Notice
                Text(warrantyText)
                    .font(.system(size: 14))
                    .fontWeight(.thin)
                    .frame(width: 370, height: 420)
                    .multilineTextAlignment(.leading)
                
                // Display Button to SignInView screen
                NavigationLink(destination: SignInView()) {
                    Text(buttonText)
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .background(Color.yellow)
                        .foregroundColor(Color.black)
                        .cornerRadius(5)
                        .padding(50)
                }
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
            
            Text("Terms of Use")
                .font(.system(size: 14))
                .underline()
                .offset(y: 320)
    
            Text("Privacy Policy")
                .font(.system(size: 14))
                .underline()
                .offset(y: 360)
        }
    }
}

#Preview {
    WaiversView(headerLogo: "TheStack_type_and_shield", headerText: "Training Disclaimer & Waivers", buttonText: "I Accept")
}
