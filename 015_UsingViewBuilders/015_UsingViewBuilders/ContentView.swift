//
//  ContentView.swift
//  015_UsingViewBuilders
//
//  Created by Jorge Villavicencio on 17/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BlueCircle {
                Text("some text here")
                Rectangle().fill(.red).frame(width: 40, height: 40)
            }
            
            BlueCircle {
                Text("Another example")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
