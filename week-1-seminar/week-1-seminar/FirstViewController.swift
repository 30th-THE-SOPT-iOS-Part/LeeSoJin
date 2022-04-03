//
//  FirstViewController.swift
//  week-1-seminar
//
//  Created by Sojin Lee on 2022/04/03.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    @IBOutlet weak var dataButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goToSecondViewController(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }

        //self.present(nextVC, animated: true, completion: nil)
        //모달 방식
        
        nextVC.message = dataTextField.text
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
