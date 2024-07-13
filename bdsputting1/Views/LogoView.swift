//
//  LogoView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 12/07/2024.
//

import SwiftUI

struct LogoView: View {
    
    var headerLogo: String = "EditedLogo" // "TheStack_type_and_shield"
    
    var body: some View {
        Spacer(minLength: 10)
        
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
