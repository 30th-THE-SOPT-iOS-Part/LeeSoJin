//
//  StoryUserDataModel.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/04.
//

import Foundation

struct StoryUserDataModel{
    let userImageName: String
    let userName: String
}

extension StoryUserDataModel{
    static let sampleData: [StoryUserDataModel] = [
        StoryUserDataModel(userImageName: "avatar1", userName: "avatar1"),
        StoryUserDataModel(userImageName: "avatar2", userName: "avatar2"),
        StoryUserDataModel(userImageName: "avatar3", userName: "avatar3"),
        StoryUserDataModel(userImageName: "avatar4", userName: "avatar4"),
        StoryUserDataModel(userImageName: "avatar5", userName: "avatar5"),
        StoryUserDataModel(userImageName: "avatar6", userName: "avatar6"),
        StoryUserDataModel(userImageName: "avatar3", userName: "avatar3"),
        StoryUserDataModel(userImageName: "avatar4", userName: "avatar4"),
    ]
}
