//
//  LoginViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/06.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
    // MARK: - @IBOutlet
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPassword: UILabel!
    @IBOutlet weak var noAccount: UILabel!
    @IBOutlet weak var goToSignup: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var clearButton: UIImageView!
    @IBOutlet weak var passwordHiddenButton: UIButton!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setUpTextField()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        resetTextField()
    }
    
    // MARK: - UI
    private func configureUI(){
        imageView.image = UIImage(named: "insta_logo")
        emailTextField.borderStyle = .roundedRect
        passwordTextField.borderStyle = .roundedRect
        forgotPassword.text = "비밀번호를 잊으셨나요?"
        forgotPassword.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        loginButton.isEnabled = false
        clearButton.isHidden = true
        noAccount.sizeToFit()
    }
  
    // MARK: - Custom Methods
    private func setUpTextField(){
        [emailTextField, passwordTextField].forEach {
            $0?.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        }
    }
    
    private func resetTextField(){
        emailTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    
    private func setUpClearBtnStatus(){
        guard let isEmailTextFieldEmpty = emailTextField.text?.isEmpty else { return }
        clearButton.isHidden = isEmailTextFieldEmpty
    }
    
    @objc func textFieldEditingChanged(_ textField: UITextField) {
        setUpClearBtnStatus()
        loginButton.isEnabled = ![emailTextField, passwordTextField].compactMap {
            $0.text?.isEmpty
        }.contains(true)
    }
    
    func loginAlert(){
        let alert = UIAlertController(title:"로그인 성공",
            message: "",
            preferredStyle: UIAlertController.Style.alert)
        let confirm = UIAlertAction(title: "확인", style: .default){ (action) in
            let TabBarStoryboard = UIStoryboard(name: "TabBar", bundle: nil)
            guard let TabBarController = TabBarStoryboard.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController
            else { return }
            guard let delegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate else {return}
            delegate.window?.rootViewController = TabBarController
        }
        alert.addAction(confirm)
        present(alert,animated: true,completion: nil)
    }
    
    // MARK: - @IBAction
    @IBAction func loginButtonTap(_ sender: Any) {
        login()
    }
    
    @IBAction func signupButtonTap(_ sender: Any) {
        guard let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignupFirstViewController") as? SignupFirstViewController else { return }
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @IBAction func passwordHiddenButtonTap(_ sender: Any) {
        passwordTextField.isSecureTextEntry.toggle()
    }
}

extension LoginViewController{
    func login(){
        guard let name = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        UserService.shared.login(name: name, email: name, password: password){
            response in
            switch response{
            case .success(let data):
                guard let data = data as? LoginResponse else {return}
                print("data: \(data)")
                self.loginAlert()
            default:
                return
            }
        }
    }
    
    
}


