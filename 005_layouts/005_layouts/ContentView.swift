//
//  ContentView.swift
//  005_layouts
//
//  Created by Jorge on 16/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                VStack(alignment: .leading) {
                    Text("City")
                        .foregroundColor(Color.gray)
                    Text("New York")
                        .font(.title)
                }
                Spacer()
            }
        }.ignoresSafeArea(.container, edges: .bottom)
    }
}

#Preview {
    ContentView()
}
