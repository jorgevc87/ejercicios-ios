//
//  ContentView.swift
//  026_deleting_rows
//
//  Created by Jorge Villavicencio on 1/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["USA", "Canada", "Mexico", "England", "Spain", "Cameroon South Africa", "Japan", "South Korea"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Text(country)
                }.onDelete(perform: deleteItem)
            }
        }
    }
    
    private func deleteItem(at indexSet: IndexSet) {
        countries.remove(atOffsets: indexSet)
    }
}

#Preview {
    ContentView()
}
