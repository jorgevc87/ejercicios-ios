//
//  ContentView.swift
//  027_editable_list
//
//  Created by Jorge Villavicencio on 2/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["USA", "Canada", "Mexico", "England", "Spain", "Cameroon", "South Africa", "Japan", "South Koren"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) { country in
                    HStack {
                        Image(systemName: "phone")
                        Spacer()
                        Text(country)
                    }
                }.onDelete(perform: deleteItem)
            }.navigationTitle("Countries")
                .navigationBarTitleDisplayMode(.inline)
        }.toolbar {
            ToolbarItem(placement: .bottomBar) {
                Button("Add") {
                    
                }
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
