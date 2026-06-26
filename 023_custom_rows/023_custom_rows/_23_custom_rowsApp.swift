//
//  _23_custom_rowsApp.swift
//  023_custom_rows
//
//  Created by Jorge Villavicencio on 24/06/26.
//

import SwiftUI

@main
struct _23_custom_rowsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(weatherData: WeatherInfo.weatherData)
        }
    }
}
