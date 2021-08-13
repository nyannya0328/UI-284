//
//  MailView.swift
//  MailView
//
//  Created by nyannyan0328 on 2021/08/13.
//

import SwiftUI

struct MailView: View {
    @State var offset : CGFloat = 0
    @State var  lastOffset : CGFloat = 0
    @Binding var hide : Bool
    var bottomEdge : CGFloat
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("Compose")
                    .font(.callout.bold())
                    .padding(.leading,10)
                
                ForEach(messages){msg in
                    
                  
                    
                    CardView(msg: msg)
                    
                    
                }
                
            }
            
            
            .overlay(
            
            
                GeometryReader{proxy -> Color in
                    
                    
                    let minY = proxy.frame(in: .named("SCROL")).minY
                    
                    let durationoffset : CGFloat = 30
                    
                    
                    DispatchQueue.main.async {
                        
                        
                        if  minY < offset{
                            
                            if offset < 0 && -minY > (offset + durationoffset){
                                
                                withAnimation(.linear.speed(0.8)){
                                    
                                    hide = true
                                }
                                
                             lastOffset = -offset
                                
                                
                            }
                            
                            
                        }
                        
                        if minY > offset && -minY < (offset - durationoffset){
                            
                            
                            withAnimation(.linear.speed(0.8)){
                                
                                
                                hide = false
                            }
                            
                            lastOffset = -offset
                            
                            
                            
                            
                            
                        }
                        
                
                        
                        self.offset = minY
                    }
                    
                    
                    return Color.clear
                    
                    
                    
                }
            
            
            
            )
            .padding()
        }
        .coordinateSpace(name: "SCROL")
    }
    
    @ViewBuilder
    
    func CardView(msg : Message) -> some View{
        
        
        HStack(spacing:10){
            
            
            Text(String(msg.userName.first ?? "X"))
                .font(.title.bold())
                .frame(width: 60, height: 60)
                .background(msg.tintColor,in: Capsule())
            
            
            VStack(alignment: .leading, spacing: 15) {
                
                
                Text(msg.userName)
                    .font(.title3.bold())
                    .foregroundColor(msg.tintColor)
                
                Text(msg.message)
                    .font(.title2.italic())
                    .foregroundColor(.gray)
                
                
            }
            
            
        }
        .frame(maxWidth: .infinity,alignment: .leading)
        
        
    }
}

struct MailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
