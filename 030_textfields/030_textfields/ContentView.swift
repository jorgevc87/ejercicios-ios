//
//  ContentView.swift
//  030_textfields
//
//  Created by Jorge on 11/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var title: String = "Default Title"
    @State private var titleInput: String = ""
    
    var body: some View {
        VStack(spacing: 15) {
            
            Text(title)
                .lineLimit(1)
                .padding()
                .background(Color.yellow)
            
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
                .submitLabel(.continue)
                .textInputAutocapitalization(.words)
                .onSubmit {
                    assignTitle()
                }
            
            Button("Save") {
                title = titleInput
                titleInput = ""
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
