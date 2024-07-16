//
//  BuyStackView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 06/07/2024.
//

import SwiftUI

struct BuyStackView: View {
    
    let headerLogo : String
    let buttonText : String

    var body: some View {

        VStack {
            // Header Logo
            Image(headerLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 80.0)
                .offset(y: -20)
            
//            Spacer()
            
            VStack {
                SmallAreaView1(topText: "I want to use Stack Putting", bodyText: "I want to purchase a subscription to Stack Putting separately from TheStack hardware.", buttonText: "Buy Now / Redeem Code")

                SmallAreaView2(topText: "I have purchased TheStack hardware", bodyText: "My Stack just arrived, I'm ready to get started. Stack Putting is included!", buttonText: "Activate Serial Number",  buttonText1: "Buy Now ")
                
                SmallAreaView3(bodyText: "I have a coaches license and am ready to train my players.", buttonText: "Activate Coaches License")
                
                SmallAreaView3(bodyText: "My coach sent me a code, and I'm ready to start training.", buttonText: "Activate Code From My Coach")
            }
            
            Spacer()
            
            // Display Button to LoginView screen
            NavigationLink(destination: LoginView()) {
                (
                    Text(buttonText)
                    +
                    Text(Image(systemName: "arrow.right"))
                )
                .bold()
                .frame(width: 340, height: 40, alignment: .center)
                .border(.yellow)
                .foregroundColor(Color.black)
                .cornerRadius(5)
            }
            Spacer()
        }
    }
}

#Preview {    
    BuyStackView(headerLogo: "TheStack_type_and_shield", buttonText: "I'm Stacked, Sign In ")
}

struct SmallAreaView1: View {
    
    let topText : String
    let bodyText : String
    let buttonText : String

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 11)
            .stroke(Color(.yellow), lineWidth: 1)
                .frame(width: 400, height: 120)
            
            VStack {
                
                // Display Heading Text
                if topText != "" {
                    Text(topText)
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color.black)
                        .offset(y: 45)
                }
                
                // Display Body Text
                Text(bodyText)
                    .font(.system(size: 14))
                    .fontWeight(.thin)
                    .frame(width: 380, height: 120)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .offset(y: -5 )
                
                // Display Button to LoginView screen
                NavigationLink(destination: LoginView()) {
                    Text(buttonText)
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .background(Color.yellow)
                        .foregroundColor(Color.black)
                        .cornerRadius(5)
                        .offset(y: -50)
                }
            }
            .padding(.vertical, -30)
        }
    }
}

struct SmallAreaView2: View {
    
    let topText : String
    let bodyText : String
    let buttonText : String
    let buttonText1 : String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 11)
            .stroke(Color(.yellow), lineWidth: 1)
                .frame(width: 400, height: 160)
            
            VStack {
                
                // Display Heading Text
                if topText != "" {
                    Text(topText)
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color.black)
                        .offset(y: 45)
                }
                
                // Display Body Text
                Text(bodyText)
                    .font(.system(size: 14))
                    .fontWeight(.thin)
                    .frame(width: 380, height: 120)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .offset(y: -5 )
                
                // Display Button to LoginView screen
                NavigationLink(destination: LoginView()) {
                    Text(buttonText)
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .background(Color.yellow)
                        .foregroundColor(Color.black)
                        .cornerRadius(5)
                        .offset(y: -50)
                }

                // Display Button to LoginView screen
                NavigationLink(destination: LoginView()) {
                    (
                    Text(buttonText1)
                    +
                    Text(Image(systemName: "arrow.up.right.circle"))
                    )
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .foregroundColor(Color.black)
                        .border(.yellow)
                        .cornerRadius(5)
                        .offset(y: -50)
                }
            }
            .padding(.vertical, -30)
        }
    }
}

struct SmallAreaView3: View {
    
    let bodyText : String
    let buttonText : String

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 11)
            .stroke(Color(.yellow), lineWidth: 1)
                .frame(width: 400, height: 100)
            
            VStack {
                
                // Display Body Text
                Text(bodyText)
                    .font(.system(size: 14))
                    .fontWeight(.thin)
                    .frame(width: 380, height: 120)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .offset(y: -5 )
                
                // Display Button to LoginView screen
                NavigationLink(destination: LoginView()) {
                    Text(buttonText)
                        .bold()
                        .frame(width: 340, height: 40, alignment: .center)
                        .background(Color.yellow)
                        .foregroundColor(Color.black)
                        .cornerRadius(5)
                        .offset(y: -50)
                }
            }
            .padding(.vertical, -26)
        }
    }
}
