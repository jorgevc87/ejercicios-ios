//
//  ContentView.swift
//  034_progressview
//
//  Created by Jorge Villavicencio on 15/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentValue: Float = 5
    
    var body: some View {
        VStack {
            
            HStack {
                Text("ProgressView")
                Spacer()
            }
            ProgressView(value: currentValue, total: 10)
            
            Spacer(minLength: 10)
            
            HStack {
                Text("SliderView")
            }
            Slider(value: $currentValue, in: 0...10)
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
