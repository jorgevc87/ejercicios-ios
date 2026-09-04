//
//  _39_booksApp.swift
//  039_books
//
//  Created by Jorge Villavicencio on 24/08/26.
//

import SwiftUI

@main
struct _39_booksApp: App {
    @State private var appData = ApplicationData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(appData)
        }
    }
}
