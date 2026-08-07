//
//  ContentView.swift
//  035_observable
//
//  Created by Jorge on 30/07/26.
//

import SwiftUI
import Observation

@Observable class ViewData {
    var titleInput: String = ""
}

struct ContentView: View {
    @Bindable var viewData = ViewData()
    @Environment(ApplicationData.self) private var appData
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
