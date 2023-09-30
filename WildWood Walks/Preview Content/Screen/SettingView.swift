//
//  SettingView.swift
//  WildWood Walks
//
//  Created by Khan on 30.09.23.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        // MARKS: - PROPERTIES
         let alternateAppIcons: [String] = [
          "AppIcon-MagnifyingGlass",
          "AppIcon-Map",
          "AppIcon-Mushroom",
          "AppIcon-Camera",
          "AppIcon-Backpack",
          "AppIcon-Campfire"
        ]
        
        List {
            // MARK: - SECTION: HEADER
            Section {
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size:80, weight: .black))
                    VStack(spacing: -10) {
                        Text("WALKING")
                            .font(.system(size: 34, weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top,8)
                
                VStack (alignment:.leading, spacing: 8)
                {
                    
                    
                    Text("Where can you find \n Perfect Tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The Hike which looks exciting in photo but is even better once you are actually there. the hike that you hope to do again some day.  Find the best day hikes in the app.")
                        .multilineTextAlignment(.leading)
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boost, it is time for walking")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGrayMedium)
                }
                .multilineTextAlignment(.leading)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }//: HEADER
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
           
            Section(header: Text("Alternate Icons")) {
              ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                  ForEach(alternateAppIcons.indices, id: \.self) { item in
                    Button {
                      print("Icon \(alternateAppIcons[item]) was pressed.")
                      
                      UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                        if error != nil {
                          print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                        } else {
                          print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                        }
                      }
                    } label: {
                      Image("\(alternateAppIcons[item])-Preview")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .cornerRadius(16)
                    }
                    .buttonStyle(.borderless)
                  }
                }
              } //: SCROLL VIEW
              .padding(.top, 12)
              
              Text("Choose your favourite app icon from the collection above.")
                .frame(minWidth: 0, maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .font(.footnote)
                .padding(.bottom, 12)
            } //: SECTION
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ABOUT
            
            Section (header:Text("About the App"),
                     footer: HStack{
                Spacer()
                Text("Copyright @  All Right reserved.")
                Spacer()
            }.padding(.vertical, 8)
            
            ) {
                
              
                CustomeListRowView(rowLable: "Application", rowIcon: "apps.iphone", rowContent: "Walk", rowTintColor: .blue)
                
                CustomeListRowView(rowLable: "Technology", rowIcon: "swift", rowContent: "iOS", rowTintColor: .orange)
                
                CustomeListRowView(rowLable: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Ab Waris", rowTintColor: .mint)
                
                CustomeListRowView(rowLable: "Designer", rowIcon: "paintpalette", rowContent: "Khan", rowTintColor: .red)
                
                CustomeListRowView(rowLable: "Website", rowIcon: "globe", rowContent: "HTTP", rowTintColor: .green)
                
                CustomeListRowView(rowLable: "About", rowIcon: "info.bubble", rowContent: "About Me", rowTintColor: .purple)

            } //: END OF SECTION
        }
       
      
    }//: LIST
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}


