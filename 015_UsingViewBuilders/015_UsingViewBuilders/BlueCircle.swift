//
//  BlueCircle.swift
//  015_UsingViewBuilders
//
//  Created by Jorge Villavicencio on 17/06/26.
//

import SwiftUI

struct BlueCircle<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            content
            Spacer()
            Circle().fill(Color.blue).frame(width: 20, height: 30)
        }.padding()
    }
}
