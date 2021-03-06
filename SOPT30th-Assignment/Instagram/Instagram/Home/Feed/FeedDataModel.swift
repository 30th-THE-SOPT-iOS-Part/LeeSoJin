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
        FeedDataModel(userImageName: "avatar1", userName: "avatar1", feedImageName: "postImage1", likeCount: 30, comment: "πκΈ°νλ μΌμ΄λλ κ²μ΄ μλλΌ λ§λ€μ΄λ΄λ κ²μ΄λ€", commentCount: 19),
        FeedDataModel(userImageName: "avatar2", userName: "avatar2", feedImageName: "postImage2", likeCount: 330, comment: "ππ»λ΄ μΈμ νμ΄ν", commentCount: 24),
        FeedDataModel(userImageName: "avatar3", userName: "avatar3", feedImageName: "postImage3", likeCount: 130, comment: "λλ κ·Έλ κ² μ΄μ λ§ν΄ λλλλπ", commentCount: 100),
        FeedDataModel(userImageName: "avatar4", userName: "avatar4", feedImageName: "postImage4", likeCount: 30, comment: "κΈ°νλ μΌμ΄λλ κ²μ΄ μλλΌ λ§λ€μ΄λ΄λ κ²μ΄λ€", commentCount: 19)
    ]
}
