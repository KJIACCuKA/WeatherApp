//
//  NetworkWeatherManager.swift
//  Weather
//
//  Created by Никита Козловский on 20.09.2024.
//

import Foundation

struct NetworkWeatherManager {
    
    func fetchWeather() {
        let urlString = "https://api.weather.yandex.ru/v2/forecast?lat=55.75396&lon=37.620393&extra=true"
        guard let url = URL(string: urlString) else { return }
        
        // - Создаем запрос
        var request = URLRequest(url: url, timeoutInterval: Double.infinity)
        // - Ключ пользователя
        request.addValue("\(apiKey)", forHTTPHeaderField: "X-Yandex-API-Key")
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()
    }
}
