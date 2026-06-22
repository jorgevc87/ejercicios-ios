//
//  ContentView.swift
//  012_buttons
//
//  Created by Jorge Villavicencio on 17/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                NavigationLink("Buttons") {
                    ButtonView()
                }
                NavigationLink("EditButtons") {
                    EditButtonView()
                }
                NavigationLink("MenuButtons") {
                    MenuButtonView()
                }
                NavigationLink("Details about Text") {
                    Text("Very long text that should not be displayed in a single line because it is not good design").padding().navigationTitle(Text("Detail"))
                }.navigationTitle(Text("Main View"))
            }
        }
    }
}

#Preview {
    ContentView()
}
