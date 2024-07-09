//
//  NewSessionView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 28/06/2024.
//

import SwiftUI

struct NewSessionView: View {
    
    @State var technique = ""
    
    let headingText : String
    let completeSessionText : String
    let expressSessionText : String
    
    var body: some View {
        // Startup Type Selection Form
        VStack{
            Form{
                Text(headingText)
                    .padding(.vertical, 8)
                    .font(.system(size: 20))
                    .bold()
                
                HStack{
                    TextField("Location", text: $technique)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 14))
                    
                    Text(Image(systemName: "contextualmenu.and.cursorarrow"))
                        .font(.system(size: 20))
                        .foregroundColor(Color.gray)
                }

                Text("Complete Session (Recommended)")
                    .bold()
                
                Text("Find a green with any amount of slope. You will be guided through an 18-hole putting session that takes ~15 min.")
                
                Button(action: {}) {
                    Text(completeSessionText)
                        .bold()
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .cornerRadius(5)
                }
                .edgesIgnoringSafeArea(.horizontal)
                .background(.yellow)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.yellow, lineWidth: 2)
                )
                
                Text("Express Session")
                    .bold()
                
                Text("Don't have 15min? Simply record the number of putts you hit for each hole.")
                
                Button(action: {}) {
                    Text(expressSessionText)
                        .bold()
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .cornerRadius(5)
                }
                .edgesIgnoringSafeArea(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.yellow, lineWidth: 2)
                )
            }
        }
    }
}

#Preview {
    NewSessionView(headingText: "Start a New Session", completeSessionText: "Start Complete Session", expressSessionText: "Start Express Session")
}
