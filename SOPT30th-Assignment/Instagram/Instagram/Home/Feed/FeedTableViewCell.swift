//
//  FeedTableViewCell.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/05.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    static let identifier = "FeedTableViewCell"
    // MARK: - @IBOutlet
    @IBOutlet weak var userImgView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var moreBtn: UIButton!
    @IBOutlet weak var feedImgView: UIImageView!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var commentBtn: UIButton!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var bookMarkBtn: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var userCommentLabel: UILabel!
    @IBOutlet weak var moreCommentLabel: UILabel!
    @IBOutlet weak var commentUserNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setData(_ feedData : FeedDataModel){
        userImgView.image = UIImage(named: feedData.userImageName)
        feedImgView.image = UIImage(named: feedData.feedImageName)
        userNameLabel.text = feedData.userName
        userCommentLabel.text = feedData.userName
        likeCountLabel.text = "좋아요 \(feedData.likeCount)개"
        userCommentLabel.text = feedData.comment
        moreCommentLabel.text = "댓글 \(feedData.commentCount)개 모두 보기"
    }
}
