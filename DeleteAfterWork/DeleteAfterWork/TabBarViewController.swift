//
//  ViewController.swift
//  DeleteAfterWork
//
//  Created by Никита Козловский on 19.09.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let profileVC = ProfileViewController()
    private let contactsVC = ContactsTableViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createTabBar()
    }
    
    private func createTabBar() {
        
        tabBar.barTintColor = .red
        tabBar.tintColor = .red
        
        let profileNVC = UINavigationController(rootViewController: profileVC)
        let contactsNVC = UINavigationController(rootViewController: contactsVC)
        
        profileNVC.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.circle.fill"), tag: 0)
        contactsNVC.tabBarItem = UITabBarItem(title: "Контакты", image: UIImage(systemName: "book.closed.fill"), tag: 1)
        
        setViewControllers([profileNVC, contactsNVC], animated: true)
        
    }


}

