//
//  CityWeather.swift
//  Weather
//
//  Created by Никита Козловский on 19.09.2024.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    private lazy var taskLabel = UILabel(text: "test", textAlignment: .left)
    private lazy var twoLabel = UILabel(text: "test", textAlignment: .left)
    private lazy var threeLabel = UILabel(text: "test", textAlignment: .left)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
        backgroundColor = .cyan
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        self.addSubview(taskLabel)
        self.addSubview(twoLabel)
        self.addSubview(threeLabel)
        
        NSLayoutConstraint.activate([
            taskLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            taskLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            twoLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            twoLabel.trailingAnchor.constraint(equalTo: threeLabel.leadingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            threeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            threeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
}
