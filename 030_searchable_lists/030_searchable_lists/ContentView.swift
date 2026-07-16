//
//  ContentView.swift
//  030_searchable_lists
//
//  Created by Jorge Villavicencio on 6/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    let food: [Food] = Food.sampleFood
    
    var searchResult: [Food] {
        if searchText.isEmpty {
            return food
        } else {
            return food.filter($0.name)
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResult, id: \.self) { food in
                        
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
