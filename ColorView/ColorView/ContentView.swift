import SwiftUI

struct ContentView: View {
    var body: some View {
        /*
         Color(red: 160/255, green: 228/255, blue: 255/255)
         .frame(width: 250, height: 100)
         */
        
        // using a pre defined color set in xcode
        /*Color("MyColor")
            .frame(width: 250, height: 100)
         */
        Text("Hello World")
            .font(.title)
            .padding(20) // the order of the modifiers matters
            .background(Color.gray)
            .cornerRadius(20)
            .overlay(
                Color(red: 1, green: 1, blue: 0.3, opacity: 0.2)
            )
            .frame(width: 200, height: 40)
    }
}

#Preview {
    ContentView()
}
