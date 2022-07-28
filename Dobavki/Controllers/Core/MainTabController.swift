//
//  MainTabController.swift
//  Dobavki
//
//  Created by Артур Дохно on 28.07.2022.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let main = MainViewController()
        let nav1 = templateNavigationController(image: UIImage(systemName: "house"), title: "Главная", rootViewController: main)
        
        let catalog = CatalogViewController()
        let nav2 = templateNavigationController(image: UIImage(systemName: "bag"), title: "Каталог", rootViewController: catalog)
        
        let cart = CartViewController()
        let nav3 = templateNavigationController(image: UIImage(systemName: "cart"), title: "Корзина", rootViewController: cart)
        
        let profile = ProfileViewController()
        let nav4 = templateNavigationController(image: UIImage(systemName: "person"), title: "Профиль", rootViewController: profile)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }
    
    func templateNavigationController(image: UIImage?, title: String, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.tabBarItem.title = title
        return nav
    }

}
