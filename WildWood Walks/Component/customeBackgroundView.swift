//
//  customeBackgroundView.swift
//  WildWood Walks
//
//  Created by Khan on 30.09.23.
//

import SwiftUI

struct customeBackgroundView: View {
    var body: some View {
        
        ZStack {
            // Mark: -3. DEPTH
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
               
            // Mark: -2. DEPTH
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.86)
            // Mark: -1. SURFACE
            LinearGradient(colors: [Color.customGreenLight, Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)
            
        }
    }
}

struct customeBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        customeBackgroundView()
            .padding()
    }
}
