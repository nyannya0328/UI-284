//
//  Home.swift
//  Home
//
//  Created by nyannyan0328 on 2021/08/13.
//

import SwiftUI

struct Home: View {
    var bottomEdge : CGFloat
    @State var currentTab = "Mail"
    @State var hide = false
    
    init(bottomEdge : CGFloat) {
        UITabBar.appearance().isHidden = true
        self.bottomEdge = bottomEdge
    }
    var body: some View {
        TabView(selection: $currentTab) {
            
            MailView(hide: $hide, bottomEdge: bottomEdge)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.05))
                .tag("Mail")
            
            
            Text("Meet")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.05))
                .tag("Meet")
            
            
        }
        .overlay(
            
            
            VStack{
                
                
                Button {
                    
//                    withAnimation{
//                        
//                        hide.toggle()
//                    }
                    
                } label: {
                    
                    
                    HStack(spacing:hide ? 0 : 8){
                        
                        
                        Image(systemName: "pencil")
                            .font(.title2.bold())
                            .foregroundColor(Color("Pink"))
                        
                        Text("Compose")
                            .font(.title3.bold())
                            .foregroundColor(.orange)
                            .frame(width: hide ? nil : 0, height: hide ? nil : 0)
                            
                    }
                    .padding(.vertical,hide ? 15 : 12)
                    .padding(.horizontal)
                    .background(Color("TabBG"),in: Capsule())
                    .padding(.trailing,5)
                    .offset(y: -10)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 10)
                    .animation(.none, value: currentTab)
                    
                }

                
                
                CustomTabView(currentTab: $currentTab, bottomEdge: bottomEdge)
            }
                .offset(y: hide ? (15 + 50 + bottomEdge) : 0)
        
            ,alignment: .bottom
        
        
        )
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
