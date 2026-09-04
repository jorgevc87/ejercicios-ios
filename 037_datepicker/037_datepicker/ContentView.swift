//
//  ContentView.swift
//  037_datepicker
//
//  Created by Jorge Villavicencio on 15/08/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
            DatePicker("Date:", selection: $selectedDate)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
