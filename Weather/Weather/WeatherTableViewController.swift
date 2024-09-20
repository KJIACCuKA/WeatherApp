//
//  ViewController.swift
//  Weather
//
//  Created by Никита Козловский on 19.09.2024.
//

import UIKit

class WeatherTableViewController: UITableViewController {
    
    private let weatherID = "weatherID"
    
    let networkWeatherManager = NetworkWeatherManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Погода"
        view.backgroundColor = .white
        createNavBar()
        settingsForTableView()
        networkWeatherManager.fetchWeather()
    }
    
    private func settingsForTableView() {
        tableView.register(WeatherTableViewCell.self, forCellReuseIdentifier: weatherID)
    }
    
    private func createNavBar() {
        let rightButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewTask))
        navigationItem.rightBarButtonItem = rightButton
    }
    
    @objc private func addNewTask() {
    }
    
    func goToNextVC() {
        let tesVC = WeatherDetailViewController()
        let testNVC = UINavigationController(rootViewController: tesVC)
        present(testNVC, animated: true)
    }
}

//MARK: - UITableViewDataSourse

extension WeatherTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: weatherID, for: indexPath) as? WeatherTableViewCell else { return UITableViewCell() }
        return cell
    }
}

extension WeatherTableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        goToNextVC()
        
    }
}
