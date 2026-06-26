//
//  ContentView.swift
//  021_multiple_views
//
//  Created by Jorge Villavicencio on 24/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "Default Title"
    @State private var titleInput: String = ""
        
    var body: some View {
        VStack {
            HeaderView(title: title, titleInput: $titleInput)
            
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

struct HeaderView: View {
    var title: String
    @Binding var titleInput: String
    
    var body: some View {
        VStack {
            Text(title).padding()
            
            TextField("Insert Title", text: $titleInput).textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    ContentView()
}
