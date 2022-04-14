//
//  CustomTabBarController.swift
//  week-2-seminar
//
//  Created by Sojin Lee on 2022/04/09.
// 스보에서 첫 번째로 보이는 화면. 이 화면만 UITabBarController를 상속받음. 스보 이름 바꾸기

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarController()
    }
    
    //함수 작성 - 탭 바 컨트롤러 세팅
    func setTabBarController (){
        // 1. 스보 상에 있는 VC를 안전하게 가져와서 인스턴스화 해준다.
        guard let firstViewController = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController"),
              let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        else { return }
        
        // 2. tabBarItem 설정
        firstViewController.tabBarItem = UITabBarItem(
            title: "FirstTab",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        secondViewController.tabBarItem = UITabBarItem(
            title: "SecondTab",
            image: UIImage(named: "Home"),
            selectedImage: UIImage(systemName: "Home-1")
        )
        
        // 3.설정한 화면을 탭바컨트롤러랑 연결
        setViewControllers([firstViewController, secondViewController], animated: true)
        
    }

}
