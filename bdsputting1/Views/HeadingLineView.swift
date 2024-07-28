//
//  HeadingLineView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 20/07/2024.
//

import SwiftUI

struct HeadingLineView: View {
    
    let headerText : String
    
    var body: some View {
        HStack {
            Text(headerText)
                .padding(.horizontal, 0)
                .font(.system(size: 18))
                .bold()
            
            Spacer()
            
            Image(systemName: "xmark.circle")
        }
    }
}

#Preview {
    HeadingLineView(headerText: "Training Disclaimer & Waiver")
}
