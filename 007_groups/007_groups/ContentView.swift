//
//  ContentView.swift
//  007_groups
//
//  Created by Jorge on 16/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Group {
                Text("This is the list of")
                Text("Cities")
            }.foregroundColor(Color.gray)
            
            Group {
                Text("Manchester")
                Text("Viena")
            }.font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
