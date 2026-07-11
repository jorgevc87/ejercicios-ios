//
//  ContentView.swift
//  028_control_views_button
//
//  Created by Jorge on 4/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var colorActive: Bool = false
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Default Title")
                .padding()
                .background(colorActive ? Color.green : Color.clear)
            
            Button("Change Color") {
                colorActive.toggle()
            }
            
            Button("Change Color", action: changeColor)
            
            Spacer()
        }
        .padding()
    }
    
    func changeColor() {
        colorActive.toggle()
    }
}

#Preview {
    ContentView()
}
