//
//  ContentView.swift
//  020_using_multiple_states
//
//  Created by Jorge Villavicencio on 24/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "Default Title"
    @State private var titleInput: String = ""
    
    var body: some View {
        VStack {
            Text(title)
                .padding(10)
            
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
            
            Button(action: {
                title = titleInput
                titleInput = ""
            }, label: {
                Text("Change Title")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
