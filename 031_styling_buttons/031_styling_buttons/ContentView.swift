//
//  ContentView.swift
//  031_styling_buttons
//
//  Created by Jorge Villavicencio on 8/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10){
            
            HStack {
                Button("Cancel") {
                    print("Cancel action")
                }.buttonStyle(.bordered)
                Spacer()
                Button("Send") {
                    print("Send action")
                }.buttonStyle(.borderedProminent)
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView2: View {
    var body: some View {
        VStack(spacing: 10) {
            Button(action: {
                print("Delete Item")
            }, label: {
                
                HStack {
                    Image(systemName: "mail")
                        .imageScale(.large)
                    
                    Text("Send")
                }
                
            }).buttonStyle(.borderedProminent)
                .font(.largeTitle)
                .controlSize(.large)
            Spacer()
        }.padding()
    }
}

struct MyStyle: ButtonStyle {
    func makeBody(configuration: MyStyle.Configuration) -> some View {
        let pressed = configuration.isPressed
        
        return configuration.label
            .padding()
            .border(Color.green, width: 5)
            .scaleEffect(pressed ? 1.2 : 1.0)
    }
}

struct ContentView3: View {
    @State private var color = Color.gray
    
    var body: some View {
        VStack {
            Text("Default title")
                .padding()
                .foregroundColor(color)
            
            Button("Change color") {
                color = color == Color.green ? Color.gray : Color.green
            }.buttonStyle(MyStyle())
            
            Spacer()
        }
    }
}



#Preview {
    ContentView3()
}
