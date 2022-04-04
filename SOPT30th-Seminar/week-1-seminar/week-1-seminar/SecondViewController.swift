//
//  SecondViewController.swift
//  week-1-seminar
//
//  Created by Sojin Lee on 2022/04/03.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var message : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMessage()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func setMessage(){
        if let message = message{
            dataLabel.text = message
            dataLabel.sizeToFit()
        }
    }
}
