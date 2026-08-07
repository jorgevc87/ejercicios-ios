//
//  _36_listsApp.swift
//  036_lists
//
//  Created by Jorge on 6/08/26.
//

import SwiftUI

@main
struct _36_listsApp: App {
    @State private var appData = ApplicationData()
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            ContentView2().environment(appData)
        }
    }
}
