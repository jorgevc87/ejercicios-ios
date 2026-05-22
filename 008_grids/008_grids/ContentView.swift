//
//  ContentView.swift
//  008_grids
//
//  Created by Jorge on 19/05/26.
//

import SwiftUI

/*
each column is created by each view inside the grid row
struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                Image(systemName: "message")
                    .frame(width: 100, height: 100)
                Image(systemName: "mic")
                    .frame(width: 100, height: 100)
            }.background(.red)
            GridRow{
                Image(systemName: "phone")
                    .frame(width: 100, height: 100)
                Image(systemName: "envelope")
                    .frame(width: 100, height: 100)
            }.background(.blue)
        }.font(.largeTitle)
    }
}*/

// You can create an amount of columns by modifiers, in that case
// the column is created empty
struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                Image(systemName: "message")
                    .frame(width: 100, height: 100)
            }.background(.red)
                .gridCellColumns(3) // trhee columns
            GridRow{
                Image(systemName: "phone")
                    .frame(width: 100, height: 100)
                Image(systemName: "envelope")
                    .frame(width: 100, height: 100)
            }.background(.blue)
        }.font(.largeTitle)
    }
}

// Nested grids
struct NestedColumnsContentView: View {
    var body: some View {
        Grid {
            GridRow {
                Image(systemName: "phone")
                    .frame(width: 100, height: 100)
                    .background(.blue)
            Grid(alignment: .leading) {
                GridRow {
                    Text("My name")
                }
                GridRow {
                    Text("My number")
                }
            }
            }
        }.font(.title2)
    }
}


#Preview {
    NestedColumnsContentView()
}
