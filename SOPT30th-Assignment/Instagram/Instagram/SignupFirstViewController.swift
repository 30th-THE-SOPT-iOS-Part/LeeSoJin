//
//  SignupFirstViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/07.
//

import UIKit

class SignupFirstViewController: UIViewController {
    @IBOutlet weak var noticeLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var goToNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        self.userNameTextField.addTarget(self, action: #selector(self.userNameTextFieldDidChange(_:)), for: .editingChanged)
    }
    
    func configUI(){
        noticeLabel.text = "새 계정에 사용할 사용자 이름을 선택하세요. 나중에 \n 언제든지 변경할 수 있습니다."
        goToNextButton.isEnabled = false
    }
    
    @IBAction func nextButtonTap(_ sender: Any) {
        guard let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignupSecondViewController") as? SignupSecondViewController else { return }

        nextViewController.userName = userNameTextField.text
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @objc func userNameTextFieldDidChange(_ sender: Any?) {
        goToNextButton.isEnabled = true
    }
}
