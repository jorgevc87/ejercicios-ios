//
//  WeatherRow.swift
//  023_custom_rows
//
//  Created by Jorge Villavicencio on 24/06/26.
//

import SwiftUI

struct WeatherRow: View {
    var weather: WeatherInfo
    
    var body: some View {
        HStack {
            Image(systemName: weather.image).frame(width: 80, alignment: .leading)
            Text("\(weather.temp) °F").frame(width: 80, alignment: .leading)
            Text(weather.city)
        }.font(.system(size: 25))
            .padding()
    }
}

#Preview {
    WeatherRow(weather: WeatherInfo(image: "snow", temp: 5, city: "New York"))
}
