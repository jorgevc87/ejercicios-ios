//
//  ContentView.swift
//  016_UsingScrollView
//
//  Created by Jorge Villavicencio on 18/06/26.
//

import SwiftUI

struct ContentView: View {
    let letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p"]
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(letters, id: \.self) { letter in
                    Image(systemName: letter)
                        .font(.largeTitle)
                        .foregroundStyle(.yellow)
                        .frame(width: 50, height: 50)
                        .background(.blue)
                        .symbolVariant(.circle.fill)
                }
            }.frame(width: 50, height: 200)
            
            ScrollView(.horizontal) {
                ForEach(letters, id: \.self) { letter in
                    Image(systemName: letter)
                        .font(.largeTitle)
                        .foregroundStyle(.yellow)
                        .frame(width: 50, height: 50)
                        .background(.blue)
                        .symbolVariant(.circle.fill)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
