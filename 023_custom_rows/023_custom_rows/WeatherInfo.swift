//
//  WeatherInfo.swift
//  023_custom_rows
//
//  Created by Jorge Villavicencio on 24/06/26.
//

import Foundation

struct WeatherInfo: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}

extension WeatherInfo {
    static let weatherData = [
        WeatherInfo(image: "snow", temp: 5, city: "New York"),
        WeatherInfo(image: "cloud", temp: 5, city: "Kansas City"),
        WeatherInfo(image: "sun.max", temp: 5, city: "San Francisco"),
        WeatherInfo(image: "snow", temp: 5, city: "Chicago"),
        WeatherInfo(image: "cloud.rain", temp: 5, city: "Washington DC"),
        WeatherInfo(image: "cloud.heavyrain", temp: 5, city: ""),
        WeatherInfo(image: "sunset", temp: 5, city: "Denver"),
        WeatherInfo(image: "moon", temp: 5, city: "Memphis"),
        WeatherInfo(image: "moon.circle", temp: 5, city: "NashVille"),
        WeatherInfo(image: "wind", temp: 5, city: "Las Vegas"),
        WeatherInfo(image: "", temp: 5, city: "Phoenix")
    ]
}
