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
    var userPassword: String?
    
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
        signup()
    }
    
    func signupAlert(){
        let alert = UIAlertController(title:"회원가입 성공",
                                      message: "",
            preferredStyle: UIAlertController.Style.alert)
        let confirm = UIAlertAction(title: "확인", style: .default){ (action) in
            let MainStoryboard = UIStoryboard(name: "Main", bundle: nil)
            guard let LoginViewController = MainStoryboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
            else { return }
            self.navigationController?.pushViewController(LoginViewController, animated: true)
        }
        alert.addAction(confirm)
        present(alert,animated: true,completion: nil)
    }

}

extension SuccessViewController{
    func signup(){
        guard let name = userName else { return }
        guard let password = userPassword else { return }
        
        UserService.shared.signUp(name: name, email: name, password: password){
            response in
            switch response{
            case .success(let data):
                self.signupAlert()
            default:
                return
            }
        }
    }
}
