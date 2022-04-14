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
        configureUI()
        setUserNameLabel()
    }
    
    // MARK: - UI
    private func configureUI(){
        welcomeText.text = "언제든지 연락처 정보와 사용자 이름을 변경할 수 있습니다."
    }
    
    private func setUserNameLabel(){
        if let userName = userName {
            userNameLabel.text = "\(userName)님 Instagram에 \n 오신 것을 환영합니다."
        }
    }
    
    // MARK: - @IBAction
    @IBAction func goToLogin(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
