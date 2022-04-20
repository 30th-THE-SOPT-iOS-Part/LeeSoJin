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
        self.delegate = self
        setTabBarController()
        configureTabBarUI()
    }
    
    private func configureTabBarUI(){
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .black
    }
     
    private func setTabBarController(){
        let HomeStoryboard = UIStoryboard(name: Const.Storyboard.Name.home, bundle: nil)
        let SearchStoryboard = UIStoryboard(name: Const.Storyboard.Name.search, bundle: nil)
        let ReelsStoryboard = UIStoryboard(name: Const.Storyboard.Name.reels, bundle: nil)
        let ProfileStoryboard = UIStoryboard(name: Const.Storyboard.Name.profile, bundle: nil)
        let ShopStoryboard = UIStoryboard(name: Const.Storyboard.Name.shop, bundle: nil)
        guard let HomeViewController = HomeStoryboard.instantiateViewController(withIdentifier: Const.ViewController.identifier.home) as? HomeViewController,
              let SearchViewController = SearchStoryboard.instantiateViewController(withIdentifier: Const.ViewController.identifier.search) as? SearchViewController,
              let ReelsViewController = ReelsStoryboard.instantiateViewController(withIdentifier: Const.ViewController.identifier.reels) as? ReelsViewController,
              let ProfileViewController = ProfileStoryboard.instantiateViewController(withIdentifier: Const.ViewController.identifier.profile) as? ProfileViewController,
              let ShopViewController = ShopStoryboard.instantiateViewController(withIdentifier: Const.ViewController.identifier.shop) as? ShopViewController
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
    
}

extension TabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        guard let itemIndex = tabBar.items?.firstIndex(of: item) else { return }

        if(itemIndex == 2){
            tabBar.backgroundColor = .black
            tabBar.tintColor = .white
            tabBar.unselectedItemTintColor = .white
        }else {
            tabBar.backgroundColor = .white
            tabBar.tintColor = .black
            tabBar.unselectedItemTintColor = .black
        }
    }
}
