//
//  CustomeListRowView.swift
//  WildWood Walks
//
//  Created by Khan on 30.09.23.
//

import SwiftUI

struct CustomeListRowView: View {
    // Properties
    
    @State var rowLable: String
    @State var rowIcon: String
    @State var rowContent: String? = nil 
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDescription: String? = nil
    var body: some View {
      
        LabeledContent {
            Text(rowContent!)
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        }
    label: {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: 30)
                    .foregroundColor(rowTintColor)
                Image(systemName: rowIcon)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            Text(rowLable)
        }
    }
    }
}

struct CustomeListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomeListRowView(rowLable: "Designer", rowIcon: "paintpalette", rowContent: "AB WARIS 1996", rowTintColor: .pink)
        }
    }
}
