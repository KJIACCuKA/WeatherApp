//
//  WeatherDetailViewController.swift
//  Weather
//
//  Created by Никита Козловский on 20.09.2024.
//

import UIKit

class WeatherDetailViewController: UIViewController {
    
    private lazy var titleLabel = UILabel(text: "Название", textAlignment: .left)
    private lazy var weatherLabel = UILabel(text: "Ясно", textAlignment: .left)
    private lazy var degreesCountLabel = UILabel(text: "0 C", textAlignment: .left)
    private lazy var pressureLabel = UILabel(text: "Давление", textAlignment: .left)
    private lazy var windSpeedLabel = UILabel(text: "Скорость ветра", textAlignment: .left)
    private lazy var minTemperatureLabel = UILabel(text: "Min температура днем:", textAlignment: .left)
    private lazy var maxTemperatureLabel = UILabel(text: "Max температура днем:", textAlignment: .left)
    private lazy var windSpeedCountLabel = UILabel(text: "10 м/с", textAlignment: .left)
    private lazy var minTemperatureCountLabel = UILabel(text: "1000 С", textAlignment: .left)
    private lazy var maxTemperatureCountLabel = UILabel(text: "1000 С", textAlignment: .left)
    private lazy var pressureCountLabel = UILabel(text: "100 мм.рт.ст", textAlignment: .left)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Подробности погоды"
        addViews()
        setConstraints()
    }
    
    private func addViews() {
        view.addSubview(titleLabel)
        view.addSubview(weatherLabel)
        view.addSubview(pressureLabel)
        view.addSubview(windSpeedLabel)
        view.addSubview(minTemperatureLabel)
        view.addSubview(maxTemperatureLabel)
        view.addSubview(windSpeedLabel)
        view.addSubview(windSpeedCountLabel)
        view.addSubview(minTemperatureCountLabel)
        view.addSubview(maxTemperatureCountLabel)
        view.addSubview(pressureCountLabel)
        view.addSubview(degreesCountLabel)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            weatherLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weatherLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 100)
        ])
        
        NSLayoutConstraint.activate([
            degreesCountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            degreesCountLabel.topAnchor.constraint(equalTo: weatherLabel.bottomAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            pressureLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            pressureLabel.topAnchor.constraint(equalTo: degreesCountLabel.bottomAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            windSpeedLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            windSpeedLabel.topAnchor.constraint(equalTo: pressureLabel.bottomAnchor, constant: 15)
        ])
        
        NSLayoutConstraint.activate([
            minTemperatureLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            minTemperatureLabel.topAnchor.constraint(equalTo: windSpeedLabel.bottomAnchor, constant: 15)
        ])
        
        NSLayoutConstraint.activate([
            maxTemperatureLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            maxTemperatureLabel.topAnchor.constraint(equalTo: minTemperatureLabel.bottomAnchor, constant: 15)
        ])
        
        NSLayoutConstraint.activate([
            windSpeedCountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            windSpeedCountLabel.centerYAnchor.constraint(equalTo: windSpeedLabel.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            pressureCountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            pressureCountLabel.centerYAnchor.constraint(equalTo: pressureLabel.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            minTemperatureCountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            minTemperatureCountLabel.centerYAnchor.constraint(equalTo: minTemperatureLabel.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            maxTemperatureCountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            maxTemperatureCountLabel.centerYAnchor.constraint(equalTo: maxTemperatureLabel.centerYAnchor)
        ])
    }
}
