//
//  TabBarViewController.swift
//  RootApp
//
//  Created by Ramazan Abdullayev on 30.04.21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let vcOne = HomeViewController()
    let vcTwo = SearchViewController()
    let vcThree = OrdersViewController()
    let vcFour = ProfileViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewControllers()
    }
    
    private func setUpViewControllers() {
        vcOne.title = "Browse"
        vcTwo.title = "Search"
        vcThree.title = "Orders"
        vcFour.title = "Profile"
        
        vcOne.navigationItem.largeTitleDisplayMode = .always
        vcTwo.navigationItem.largeTitleDisplayMode = .always
        vcThree.navigationItem.largeTitleDisplayMode = .always
        vcFour.navigationItem.largeTitleDisplayMode = .always
        
        let navOne = UINavigationController(rootViewController: vcOne)
        let navTwo = UINavigationController(rootViewController: vcTwo)
        let navThree = UINavigationController(rootViewController: vcThree)
        let navFour = UINavigationController(rootViewController: vcFour)
        
        navOne.navigationBar.tintColor = .label
        navTwo.navigationBar.tintColor = .label
        navThree.navigationBar.tintColor = .label
        navFour.navigationBar.tintColor = .label
        
        navOne.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        navTwo.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        navThree.tabBarItem = UITabBarItem(title: "Orders", image: UIImage(systemName: "newspaper"), tag: 1)
        navFour.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)
        
        navOne.navigationBar.prefersLargeTitles = true
        navTwo.navigationBar.prefersLargeTitles = true
        navThree.navigationBar.prefersLargeTitles = true
        navFour.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navOne, navTwo, navThree, navFour], animated: false)
    }
}
