//
//  ContentView.swift
//  0017_generic_views
//
//  Created by Jorge Villavicencio on 23/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        getView()
    }
    
    func getView() -> AnyView {
        let valid = true
        var myView: AnyView!
        
        if valid {
            myView = AnyView(Image(systemName: "keyboard"))
        } else {
            myView = AnyView(Text("The state is invalid"))
        }
        
        return myView
    }
}

#Preview {
    ContentView()
}
