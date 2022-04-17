//
//  TabBarController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/17.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarController()
    }
    
    func setTabBarController(){
        let HomeStoryboard = UIStoryboard(name: Const.Storyboard.Name.home, bundle: nil)
        let SearchStoryboard = UIStoryboard(name: Const.Storyboard.Name.search, bundle: nil)
        guard let HomeViewController = HomeStoryboard.instantiateViewController(withIdentifier: Const.ViewController.identifier.home) as? HomeViewController,
              let SearchViewController = SearchStoryboard.instantiateViewController(withIdentifier: Const.ViewController.identifier.search) as? SearchViewController
        else { return }
        
        HomeViewController.tabBarItem = UITabBarItem(
            title: "home",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        SearchViewController.tabBarItem = UITabBarItem(
            title: "search",
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
        
        setViewControllers([HomeViewController, SearchViewController], animated: true)
    }
}
