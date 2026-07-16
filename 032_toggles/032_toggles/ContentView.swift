//
//  ContentView.swift
//  032_toggles
//
//  Created by Jorge Villavicencio on 15/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var currentState: Bool = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $currentState, label: {
                // title
                Text(currentState ? "On" : "Off")
                
                // sub title
                Text("Enable or disable")
                
                // sub sub title
                Text("Enable or disable")
                
            })
        }
        .padding()
    }
}

struct ContentView2: View {
    
    @State private var currentState: Bool = true
    
    var body: some View {
        HStack {
            
            Toggle(
                isOn: $currentState,
                label: {
                    Label("Send", systemImage: "mail")
                }
            ).toggleStyle(.button)
            
        }
    }
}

#Preview {
    ContentView2()
}

