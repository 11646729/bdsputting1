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

        // Header Logo
        LogoView()

        ZStack {
            // Rounded Rectangle & Yellow Border for test only
            RoundedRectangle(cornerRadius: 5.0)
            .stroke(Color.yellow, lineWidth: 3)
            .frame(width: 400, height: 600, alignment: .top)
            .offset(y: -50)

            VStack {
                // Display Heading Title
                HeadingLineView(headerText : headerText)
                
                // Display Warranty Notice
                Text(warrantyText)
                    .font(.system(size: 14))
                    .fontWeight(.thin)
                    .frame(width: 380, height: 420)
                    .multilineTextAlignment(.leading)

                // Display Button to SignInView screen
                NavigationLink(destination: SignInView()) {
                    Text(buttonText)
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .background(Color.yellow)
                        .foregroundColor(Color.black)
                        .cornerRadius(5)
                }
                .offset(y: 60)

                Spacer()
            }
        }
        
        Text("Terms of Use")
            .font(.system(size: 14))
            .underline()
            .offset(y: -60)
        
        Text("Privacy Policy")
            .font(.system(size: 14))
            .underline()
            .offset(y: -40)

    }
}

#Preview {
    WaiversView(headerLogo: "TheStack_type_and_shield", headerText: "Training Disclaimer & Waivers", buttonText: "I Accept")
}

struct HeadingLineView: View {
    
    let headerText : String
    
    var body: some View {
        HStack {
            Text(headerText)
                .padding(.horizontal, 0)
                .font(.system(size: 20))
                .bold()
            
            Spacer()
            
            Image(systemName: "xmark.circle")
        }
        .padding(.horizontal, 25)
    }
}
