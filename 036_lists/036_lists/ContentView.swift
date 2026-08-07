//
//  ContentView.swift
//  036_lists
//
//  Created by Jorge on 6/08/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach (1...5, id: \.self) { value in
                VStack {
                    Text("Value: \(value)")
                    Divider()
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
