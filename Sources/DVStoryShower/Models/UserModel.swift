//
//  UserModel.swift
//  SSStoryStatus
//
//  Created by Krunal Patel on 14/12/23.
//

import Foundation

// MARK: - User Model
/// The user model containing information related to user.
@Observable
public class UserModel: Identifiable {
    
    // MARK: - Vars & Lets
    /// The unique identifier for user.
    public let userId: String

    /// The user name of user.
    public let userName: String

    /// The profile image url.
    public let userImage: String

    /// The list of ``StoryModel`` containing information related
    /// to user.
    public let userStories: [StoryModel]

//    // MARK: - Initializer
    public init(id: String = UUID().uuidString, name: String, image: String, stories: [StoryModel]) {
        self.userId = id
        self.userName = name
        self.userImage = image
        self.userStories = stories
    }
}
