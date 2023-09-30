//
//  CardView.swift
//  WildWood Walks
//
//  Created by Khan on 30.09.23.
//

import SwiftUI

struct CardView: View {
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
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                // MARK: - FOOTER
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
