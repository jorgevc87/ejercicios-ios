//
//  ContentView.swift
//  022_scrolls
//
//  Created by Jorge Villavicencio on 24/06/26.
//

import SwiftUI

struct ContentView: View {
    let weatherData: [WeatherInfo] = [
        WeatherInfo(image: "snow", temp: 5, city: "New York"),
        WeatherInfo(image: "cloud", temp: 5, city: "Kansas City"),
        WeatherInfo(image: "sun.max", temp: 5, city: "San Francisco"),
        WeatherInfo(image: "snow", temp: 5, city: "Chicago"),
        WeatherInfo(image: "cloud.rain", temp: 5, city: "Baltimore"),
        WeatherInfo(image: "cloud.heavyrain", temp: 5, city: "Austin"),
        WeatherInfo(image: "sun.min", temp: 5, city: "Houston"),
        WeatherInfo(image: "sun.dust", temp: 5, city: "Memphis"),
        WeatherInfo(image: "sunset", temp: 5, city: "NashVille"),
        WeatherInfo(image: "cloud.snow", temp: 5, city: "San Francisco"),
        WeatherInfo(image: "cloud.hail", temp: 5, city: "Phoenix"),
        WeatherInfo(image: "wind", temp: 5, city: "Atlanta"),
        WeatherInfo(image: "cloud.rain", temp: 5, city: "Las Vegas")
    ]
    
    var body: some View {
        List {
            ForEach(weatherData) { weather in
                HStack{
                    Image(systemName: weather.image).frame(width: 50, alignment: .leading)
                    Text("\(weather.temp) °F").frame(width: 80, alignment: .leading)
                    Text(weather.city)
                }.font(.system(size: 25))
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}




