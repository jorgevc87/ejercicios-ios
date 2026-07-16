//
//  ContentView.swift
//  029_editable_list_fields
//
//  Created by Jorge Villavicencio on 6/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        TodoItem(title: "Eat"),
        TodoItem(title: "Sleep"),
        TodoItem(title: "Code")
    ]
    
    var body: some View {
        List($todos) { $todo in
            TextField("Todo Item", text: $todo.title)
        }
    }
}

#Preview {
    ContentView()
}
