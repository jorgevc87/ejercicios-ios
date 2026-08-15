//
//  ContentView.swift
//  035_stepper
//
//  Created by Jorge Villavicencio on 20/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var currentValue: Float = 0
    
    var body: some View {
        VStack {
            Text("Current value: \(currentValue.formatted(.number.precision(.fractionLength(0))))")
            Stepper("Counter", value: $currentValue, in: 0...100, step: 5)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
