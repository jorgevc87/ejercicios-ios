//
//  ContentView.swift
//  0018_dark_mode
//
//  Created by Jorge Villavicencio on 23/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World").foregroundColor(Color("MyColor"))
    }
}

#Preview {
    ContentView().environment(\.colorScheme, .dark)
}

