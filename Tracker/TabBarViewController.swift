//
//  TabBarViewController.swift
//  Tracker
//
//  Created by Аделия Исхакова on 31.10.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTabBar()
    }
    
    private func createTabBar (){
        viewControllers = [
            createTrackerNavViewController(viewController: TrackersViewController(), title: "Трэкеры", image: UIImage(named: "TrackerNoActive")),
            createStatisticNavViewController(viewController: StaticticsViewController(), title: "Статистика", image: UIImage(named: "Statistic"))
        ]
        tabBar.backgroundColor = .white
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBar.tintColor = .red
    }
    private func createTrackerNavViewController(viewController: UIViewController, title: String, image: UIImage?) -> UINavigationController {
        let nav = UINavigationController(rootViewController: viewController)
        
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        
        //nav.viewControllers.first?.navigationItem.title = title + "Controllers"
        
        return nav
    }
    
    
    private func createStatisticNavViewController(viewController: UIViewController, title: String, image: UIImage?) -> UINavigationController {
        let nav = UINavigationController(rootViewController: viewController)
        
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        
        nav.viewControllers.first?.navigationItem.title = title + "Controllers"
        
        nav.viewControllers.first?.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "+", style: .plain, target: nil, action: nil)
        
        return nav
    }
}
