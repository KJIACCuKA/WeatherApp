//
//  WeatherData.swift
//  Weather
//
//  Created by Никита Козловский on 20.09.2024.
//

import Foundation

struct WeatherData: Decodable {
    
    let info: Info
    let fact: Fact
    let forecast: [Forecast]
}

struct Info: Decodable {
    let url: String
}

struct Fact: Decodable {
    
    let temperature: Int
    let icon: String
    let condition: String
    let windSpeed: Int
    let pressureMm: Int
    
}

struct Forecast: Decodable {
    let parts: Parts
}

struct Parts: Decodable {
    let day: Day
}

struct Day: Decodable {
    let tempMin: Int?
    let tempMax: Int?
}
