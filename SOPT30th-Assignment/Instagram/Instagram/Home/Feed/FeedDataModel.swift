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
        FeedDataModel(userImageName: "avatar1", userName: "avatar1", feedImageName: "postImage1", likeCount: 30, comment: "📚기회는 일어나는 것이 아니라 만들어내는 것이다", commentCount: 19),
        FeedDataModel(userImageName: "avatar2", userName: "avatar2", feedImageName: "postImage2", likeCount: 330, comment: "👊🏻내 인생 파이팅", commentCount: 24),
        FeedDataModel(userImageName: "avatar3", userName: "avatar3", feedImageName: "postImage3", likeCount: 130, comment: "너는 그렇게 운전만해 난난나나🚙", commentCount: 100),
        FeedDataModel(userImageName: "avatar4", userName: "avatar4", feedImageName: "postImage4", likeCount: 30, comment: "기회는 일어나는 것이 아니라 만들어내는 것이다", commentCount: 19)
    ]
}
