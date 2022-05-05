//
//  FeedDataModel.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/06.
//

import Foundation

struct FeedDataModel{
    let userImageName: String
    let userName: String
    let feedImageName: String
    let likeCount: Int
    let comment: String
    let commentCount: Int
}

extension FeedDataModel{
    static let sampleData: [FeedDataModel] = [
        FeedDataModel(userImageName: "avatar1", userName: "avatar2", feedImageName: "postImage1", likeCount: 30, comment: "기회는 일어나는 것이 아니라 만들어내는 것이다", commentCount: 19),
        FeedDataModel(userImageName: "avatar1", userName: "avatar2", feedImageName: "postImage1", likeCount: 30, comment: "기회는 일어나는 것이 아니라 만들어내는 것이다", commentCount: 19),
        FeedDataModel(userImageName: "avatar1", userName: "avatar2", feedImageName: "postImage1", likeCount: 30, comment: "기회는 일어나는 것이 아니라 만들어내는 것이다", commentCount: 19),
        FeedDataModel(userImageName: "avatar1", userName: "avatar2", feedImageName: "postImage1", likeCount: 30, comment: "기회는 일어나는 것이 아니라 만들어내는 것이다", commentCount: 19)
    ]
}

//
//func setData(_ feedData : FeedDataModel){
//    userImgView.image = UIImage(named: feedData.userImageName)
//    userNameLabel.text = feedData.userName
//    userCommentLabel.text = feedData.userName
//    likeCountLabel.text = "좋아요 \(feedData.likeCount)개"
//    userCommentLabel.text = feedData.comment
//    moreCommentLabel.text = "댓글 \(feedData.commentCount)개 모두 보기"
//}
