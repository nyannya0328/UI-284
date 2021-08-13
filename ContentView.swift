//
//  ContentView.swift
//  UI-284
//
//  Created by nyannyan0328 on 2021/08/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{proxy in
            
            let bottomEdge = proxy.safeAreaInsets.bottom
            
            Home(bottomEdge: bottomEdge == 0 ? 15 : bottomEdge)
                .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
