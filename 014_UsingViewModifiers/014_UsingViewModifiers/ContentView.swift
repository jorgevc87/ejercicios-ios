//
//  ContentView.swift
//  014_UsingViewModifiers
//
//  Created by Jorge Villavicencio on 17/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // my custom view modifier BackgroundStyle
            Text("Perfect").modifier(BackgroundStyle(bgColor: .blue))
            
            // Using Extension View
            Text("Perfect 2").backgroundStyle(color: .red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

// Extension View
extension View {
    func backgroundStyle(color: Color) -> some View{
        self.modifier(BackgroundStyle(bgColor: color))
    }
}

// ViewModifier
#if os(iOS)
import UIKit

struct BackgroundStyle: ViewModifier {
    var bgColor: Color
    func body(content: Content) -> some View {
        content.frame(width: UIScreen.main.bounds.width * 0.3).foregroundStyle(.black).padding().background(bgColor).cornerRadius(20)
    }
}

#endif
