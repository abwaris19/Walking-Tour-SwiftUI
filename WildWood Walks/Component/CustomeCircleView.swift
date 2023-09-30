//
//  CustomeCircleView.swift
//  WildWood Walks
//
//  Created by Khan on 30.09.23.
//

import SwiftUI

struct CustomeCircleView: View {
    
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        
        
        ZStack {
           
            Circle()
                .fill(LinearGradient(colors: [.customIndigoMedium, .customSamonLight], startPoint: isAnimateGradient ? .topLeading : .bottomLeading , endPoint: isAnimateGradient ?  .bottomTrailing: .topTrailing))
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true))
                    {
                        isAnimateGradient.toggle()
                    }
                }
            
            MotionAnimationView()
        }//: ZStack
        .frame(width: 256, height: 256)
        
        
    }
}

struct CustomeCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomeCircleView()
    }
}
