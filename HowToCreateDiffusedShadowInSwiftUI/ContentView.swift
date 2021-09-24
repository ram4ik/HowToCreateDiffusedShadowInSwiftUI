//
//  ContentView.swift
//  HowToCreateDiffusedShadowInSwiftUI
//
//  Created by Ramill Ibragimov on 24.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.2).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Girl")
                    .bold()
                    .padding()
                
                ZStack(alignment: .leading) {
                    
                    Image("girl")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .scaledToFill()
                        .cornerRadius(20)
                        .blendMode(.plusDarker)
                        .blur(radius: 15)
                        .offset(y: 20)
                    
                    Image("girl")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
