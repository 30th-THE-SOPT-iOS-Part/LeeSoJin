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
        configureTabBarUI()
    }
    
    private func configureTabBarUI(){
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .black
    }
     
    private func setTabBarController(){
        let HomeStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let SearchStoryboard = UIStoryboard(name: "Search", bundle: nil)
        let ReelsStoryboard = UIStoryboard(name: "Reels", bundle: nil)
        let ProfileStoryboard = UIStoryboard(name: "Profile", bundle: nil)
        let ShopStoryboard = UIStoryboard(name: "Shop", bundle: nil)
        guard let HomeViewController = HomeStoryboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController,
              let SearchViewController = SearchStoryboard.instantiateViewController(withIdentifier: "SearchViewController") as? SearchViewController,
              let ReelsViewController = ReelsStoryboard.instantiateViewController(withIdentifier: "ReelsViewController") as? ReelsViewController,
              let ProfileViewController = ProfileStoryboard.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController,
              let ShopViewController = ShopStoryboard.instantiateViewController(withIdentifier: "ShopViewController") as? ShopViewController
        else { return }
        
        HomeViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "icn_home"),
            selectedImage: UIImage(named: "icn_home_selected")
        )
        
        SearchViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "icn_search"),
            selectedImage: UIImage(named: "icn_search_selected")
        )
        
        ReelsViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "icn_reels"),
            selectedImage: UIImage(named: "icn_reels_selected")
        )
        
        ShopViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "icn_shop"),
            selectedImage: UIImage(named: "icn_shop_selected")
        )
        
        ProfileViewController.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(named: "icn_profile"),
            selectedImage: UIImage(named: "icn_profile_selected")
        )
        
        setViewControllers([HomeViewController, SearchViewController, ReelsViewController, ShopViewController, ProfileViewController], animated: true)
    }
    
    func configureDefaultUI(){
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .black
    }
    
    func configureDarkUI(){
        tabBar.backgroundColor = .black
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .white
    }
    
}

extension TabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        guard let itemIndex = tabBar.items?.firstIndex(of: item) else { return }
        itemIndex == 2 ? configureDarkUI() : configureDefaultUI()
    }
}
