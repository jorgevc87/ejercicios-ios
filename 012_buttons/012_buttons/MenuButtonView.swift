//
//  MenuButtonView.swift
//  012_buttons
//
//  Created by Jorge Villavicencio on 17/06/26.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Menu("Choose a country") {
            Button("Canada") {
                print("Selected Canada")
            }
            Button("Mexico") {
                print("Selected Mexico")
            }
            Button("USA") {
                print("Selected USA")
            }
        }
    }
}

#Preview {
    NavigationStack {
        MenuButtonView()
    }
}
