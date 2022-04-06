//
//  SuccessViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/06.
//

import UIKit

class SuccessViewController: UIViewController {

  
    @IBOutlet weak var welcomeInsta: UILabel!
    @IBOutlet weak var welcomeText: UILabel!
    
    @IBOutlet weak var doneSignupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeInsta.text="OOO님 Instagram에 \n 오신 것을 환영합니다"
        welcomeInsta.numberOfLines = 5
        welcomeInsta.font = UIFont.systemFont(ofSize:24)
        
        //TODO : UI 스타일링을 여기서 줘야만 하는지, 재사용 가능한 상태로는 못만드는지 공부해보기
        welcomeText.text = "언제든지 연락처 정보와 사용자 이름을 변경할 수 있습니다."
        welcomeText.font = UIFont.systemFont(ofSize:14)
    }
    

    @IBAction func goToLogin(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
