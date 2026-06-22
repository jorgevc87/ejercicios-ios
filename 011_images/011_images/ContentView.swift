//
//  ContentView.swift
//  011_images
//
//  Created by Jorge Villavicencio on 17/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("dog").resizable().aspectRatio(contentMode: .fit)
            
            Image("dog-and-nature").resizable().aspectRatio(contentMode: .fit).frame(width: 300, height: 200).clipShape(Circle()).overlay(Circle().stroke(.blue, lineWidth: 6)).shadow(radius: 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
