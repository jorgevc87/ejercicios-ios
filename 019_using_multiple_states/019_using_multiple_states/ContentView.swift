//
//  ContentView.swift
//  019_using_multiple_states
//
//  Created by Jorge Villavicencio on 24/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "Valid"
    @State private var isValid: Bool = true
    
    var body: some View {
        VStack {
            Text(title).padding(10)
            
            Button(action: {
                isValid.toggle()
                title = isValid ? "Valid" : "Invalid"
            }, label: {
                Text("Change Validation")
            })
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
