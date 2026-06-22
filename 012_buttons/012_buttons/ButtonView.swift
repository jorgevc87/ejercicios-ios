//
//  ButtonView.swift
//  012_buttons
//
//  Created by Jorge Villavicencio on 17/06/26.
//

import SwiftUI

struct ButtonView: View {
    @State var count = 0
    
    var body: some View {
        VStack {
            Text("Welcome to your second view")
            Text("Current count value: \(count)").padding()
            
            Button {
                count += 1
            } label: {
                Text("Tap to increment count").fontWeight(.bold).foregroundStyle(.white).padding().background(.blue).clipShape(Capsule())
            }
        }.navigationTitle("Button View")
    }
}

#Preview {
    ButtonView()
}
