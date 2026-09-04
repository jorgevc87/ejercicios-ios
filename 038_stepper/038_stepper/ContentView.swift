//
//  ContentView.swift
//  038_stepper
//
//  Created by Jorge Villavicencio on 18/08/26.
//

import SwiftUI

struct ContentView: View {
    @State private var setActive: Bool = false
    @State private var setShowPictures: Bool = false
    @State private var setTotal: Int = 10
    
    
    var body: some View {
        Form {
            // add sections
            
            Section(header: Text("Options"), footer: Text("Activate the options you want to see")) {
                Toggle("Active", isOn: $setActive)
                Toggle("Show Pictures", isOn: $setShowPictures)
            }
            
            Section(header: Text("Values"), footer: Text("Insert the number of items to display")) {
                LabeledContent("Toral") {
                    Text(String(setTotal))
                    
                    Stepper("", value: $setTotal, in: 0...10)
                        .labelsHidden()
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
