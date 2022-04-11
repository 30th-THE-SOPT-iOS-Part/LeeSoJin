//
//  SignupFirstViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/07.
//

import UIKit

class SignupFirstViewController: UIViewController {
    // MARK: - @IBOutlet
    @IBOutlet weak var noticeLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var goToNextButton: UIButton!
    
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
        noticeLabel.text = "새 계정에 사용할 사용자 이름을 선택하세요. 나중에 \n 언제든지 변경할 수 있습니다."
        goToNextButton.isEnabled = false
    }
    
    // MARK: - Custom Methods
    private func setUpTextField(){
        userNameTextField.addTarget(self, action: #selector(userNameTextFieldDidChange(_:)), for: .editingChanged)
    }
    
    private func resetTextField(){
        userNameTextField.text?.removeAll()
    }
    
    @objc func userNameTextFieldDidChange(_ sender: Any?) {
        goToNextButton.isEnabled = userNameTextField.hasText
    }
    
    // MARK: - @IBAction
    @IBAction func nextButtonTap(_ sender: Any) {
        guard let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignupSecondViewController") as? SignupSecondViewController else { return }
        nextViewController.userName = userNameTextField.text
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
