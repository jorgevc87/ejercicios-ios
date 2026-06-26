//
//  WeatherInfo.swift
//  022_scrolls
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


