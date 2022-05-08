//
//  StoryCollectionViewCell.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/04.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    // MARK: - @IBOutlet
    static let identifier = "StoryCollectionViewCell"
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setData(userData: StoryUserDataModel){
        userName.text = userData.userName
        userImage.image = UIImage(named: userData.userImageName)
    }
}
