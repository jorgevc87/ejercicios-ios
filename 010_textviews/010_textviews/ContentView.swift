//
//  ContentView.swift
//  010_textviews
//
//  Created by Jorge Villavicencio on 16/06/26.
//

import SwiftUI

struct ContentView: View {
    // State variables
    @State private var password = "1234"
    @State private var someText = "Initial text"
    
    var body: some View {
        VStack {
            SecureField("Enter a password", text: $password).padding()
            Text("Password entered: \(password)").italic()
            
            TextField("Enter some text", text: $someText).padding()
            Text(someText).font(.largeTitle).underline()
            
            Text("Changing text color and make it bold").foregroundStyle(.blue).bold()
            
            Text("Use kerning to change space between characters in the text").kerning(7)
            
            Text("Changing baseline offset").baselineOffset(100)
            
            Text("This is a multiline text implemented in SwiftUI. The traillin modifier was added to the tex. This text also implements multiple modifiers").background(.yellow).multilineTextAlignment(.trailing).lineSpacing(10)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
