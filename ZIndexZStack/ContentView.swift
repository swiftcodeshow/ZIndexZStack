//
//  ContentView.swift
//  ZIndexZStack
//
//  Created by 米国梁 on 2021/4/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggle = false
    
    var body: some View {
    
        VStack {
            
            Button("Click Here to Switch 2 Shapes") {
                toggle.toggle()
            }
         
            ZStack {
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
                    .zIndex(toggle ? 0 : 1)
                
                Circle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.red)
                    .zIndex(toggle ? 1 : 0)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
