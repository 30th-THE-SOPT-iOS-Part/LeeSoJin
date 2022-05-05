//
//  StoryCollectionViewCell.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/04.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    static let identifier = "StoryCollectionViewCell"
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setData(userData: StoryUserDataModel){
        userName.text = userData.userName
        userImage.image = UIImage(named: userData.userImageName)
    }
}
