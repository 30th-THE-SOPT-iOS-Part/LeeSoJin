//
//  SuccessViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/06.
//

import UIKit

class SuccessViewController: UIViewController{
    // MARK: - @IBOutlet
    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var doneSignupButton: UIButton!
    var userName: String?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUserNameLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    // MARK: - UI
    
    private func setUserNameLabel(){
        if let userName = userName {
            userNameLabel.text = "\(userName)님 Instagram에 \n 오신 것을 환영합니다."
        }
    }
    
    // MARK: - @IBAction
    @IBAction func goToLogin(_ sender: Any) {
        let TabBarStoryboard = UIStoryboard(name: "TabBar", bundle: nil)
        guard let TabBarController = TabBarStoryboard.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController
        else { return }
        guard let delegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate else {return}
        delegate.window?.rootViewController = TabBarController
    }


}
