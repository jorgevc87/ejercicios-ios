//
//  ContentView.swift
//  013_pickers
//
//  Created by Jorge Villavicencio on 17/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var choice = 0
    @State private var showText = false
    @State private var transitModes = ["Bike", "Car", "Bus"]
    @State private var sliderVal: Float = 0
    @State private var stepVal = 0
    @State private var gameTime = Date()
    
    var body: some View {
        Form {
            Section {
                Picker("Transit Modes", selection: $choice) {
                    ForEach(0..<transitModes.count, id: \.self) { index in
                        Text("\(transitModes[index])")
                    }
                }.pickerStyle(.segmented)
                Text("Current choice: \(transitModes[choice])")
            }
            
            Section {
                Toggle(isOn: $showText) {
                    Text("Show Text")
                }
                
                if showText {
                    Text("The text toggle is on")
                } else {
                    Text("The text toggle is off")
                }
            }
            
            Section {
                Slider(value: $sliderVal, in: 0...10, step: 0.001)
                Text("Slider current value \(sliderVal, specifier: "%.1f")")
            }
            
            Section {
                Stepper("Stepper", value: $stepVal, in: 0...5)
                Text("Stepper current value: \(stepVal)")
            }
            
            Section {
                DatePicker("Please select a date", selection: $gameTime)
            }
            
            Section {
                DatePicker("Please select a date", selection: $gameTime, in: Date()...)
            }
        }
    }
}

#Preview {
    ContentView()
}
