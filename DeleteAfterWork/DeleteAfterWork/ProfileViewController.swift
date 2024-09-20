//
//  ProfileViewController.swift
//  DeleteAfterWork
//
//  Created by Никита Козловский on 19.09.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileImage = UIImageView(image: UIImage(systemName: "person.circle.fill") ?? UIImage(), backgroundColor: .clear, contentMode: .scaleAspectFill)
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Профиль"
        addViews()
        setConstraints()
    }
    
    private func addViews() {
        view.addSubview(profileImage)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            profileImage.heightAnchor.constraint(equalToConstant: 80),
            profileImage.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
}
