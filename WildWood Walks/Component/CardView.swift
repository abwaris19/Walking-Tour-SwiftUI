//
//  CardView.swift
//  WildWood Walks
//
//  Created by Khan on 30.09.23.
//

import SwiftUI

struct CardView: View {
    @State var randomImage = 1
    var body: some View {
        
        
        ZStack {
            customeBackgroundView()
            
            VStack {
                // MARK: -HEADER
                VStack (alignment:.leading) {
                    HStack {
                        Text("Walking")
                            .fontWeight(.black)
                            .font(.system(size: 40))
                            .foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                      Spacer()
                        Button {
                            //: ACTION
                            print("Pressed")
                        } label: {
                            CustomButtonView()
                        }

                    }
                    Text("Fun and enjoy outdoor activity with friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal,30)
                // MARK: - MAIN CONTENT
                ZStack {
                    
                    Circle()
                        .fill(LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSamonLight")], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 256, height: 256)
                    Image("image-\(randomImage)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 2), value: randomImage)
                 
                }
                // MARK: - FOOTER
                
                Button {
                    // ACTION: Generate Random Number
                    randomImage = Int.random(in: 1...5)
               
                } label: {
                    Text("Explore More")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
                
                
            } //: VSTACK
        } // : CARD SIZE
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
