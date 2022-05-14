//
//  FeedTableViewCell.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/05.
//

import UIKit

protocol LikeBtnDelegate{
    func likeBtnTap(index:Int)
}

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
    @IBOutlet weak var userCommnetLabel: UILabel!
    @IBOutlet weak var commentUserNameLabel: UILabel!
    @IBOutlet weak var moreCommentLabel: UILabel!
    var index:Int = 0
    var delegate: LikeBtnDelegate?
    var isLikeBtnTap:Bool = false
    
    @IBAction func likeBtnTap(_ sender: Any) {
        delegate?.likeBtnTap(index: index)
        isLikeBtnTap.toggle()
        likeBtn.setImage(isLikeBtnTap ? UIImage(named: "icn_like") : UIImage(named: "Like"), for: UIControl.State.normal)
    }
    
    // MARK: - LifeCycle
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
        commentUserNameLabel.text = feedData.userName
        likeCountLabel.text = "좋아요 \(String(feedData.likeCount))개"
        commentUserNameLabel.text = feedData.userName
        userCommnetLabel.text = feedData.comment
        moreCommentLabel.text = "댓글 \(String(feedData.commentCount))개 모두 보기"
    }
}
