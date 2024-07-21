//
//  LogoView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 12/07/2024.
//

import SwiftUI

struct LogoView: View {
    
    var headerLogo: String = "TheStack_type_and_shield" // "EditedLogo"
    
    var body: some View {
//        Spacer(minLength: 10)
        
        
//        // Display Top Image
//        Image(topImage)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: sizeWidth, height: imageHeight, alignment: .topLeading)

        Image(headerLogo)
            .resizable()
            .edgesIgnoringSafeArea(.top)
            .aspectRatio(contentMode: .fit)
            .frame(width: 120.0, height: 80.0, alignment: .top)
        
        
    }
}

#Preview {
    LogoView()
}
