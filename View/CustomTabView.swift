//
//  CustomTabView.swift
//  CustomTabView
//
//  Created by nyannyan0328 on 2021/08/13.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var currentTab : String
    var bottomEdge : CGFloat
    var body: some View {
        HStack(spacing:0){
            
            ForEach(["Mail","Meet"],id:\.self){image in
                
                
                TabButton(image: image, currentTab: $currentTab,badge: image == "Mail" ? 99 : 0)
            }
            
        }
        .padding(.top,15)
        .padding(.bottom,bottomEdge)
        .background(Color("TabBG"))
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabButton : View{
    
    var image : String
    @Binding var currentTab : String
    
    @Environment(\.colorScheme) var scheme
    var badge : Int = 0
    
    var body: some View{
        
        
        Button {
            withAnimation{currentTab = image}
        } label: {
            Image(image)
                .resizable()
                .renderingMode(.template)
                .frame(width: 50, height: 50)
                .foregroundColor(currentTab == image ? Color("Pink") : .gray.opacity(0.3))
                .overlay(
                
                    Text("\(badge < 100 ? badge : 99)+")
                        .font(.caption.bold())
                        .padding(.vertical,5)
                        .padding(.horizontal,5)
                        .foregroundColor(scheme == .dark ? .black : .white)
                        .background(Color("Pink"),in: Capsule())
                        .background(
                        
                        Capsule()
                            .stroke(scheme == .dark ? .black : .white,lineWidth: 3)
                        
                        )
                        .opacity(badge == 0 ? 0 : 1)
                    
                    
                    ,alignment: .topTrailing
                
                
                )
                .frame(maxWidth: .infinity)
        }

    }
}
