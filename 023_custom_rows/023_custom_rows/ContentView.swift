//
//  ContentView.swift
//  023_custom_rows
//
//  Created by Jorge Villavicencio on 24/06/26.
//

import SwiftUI

struct ContentView: View {
    var weatherData: [WeatherInfo]
    
    var body: some View {
        List {
            ForEach(weatherData) { weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

#Preview {
    ContentView(weatherData: WeatherInfo.weatherData)
}
