//
//  StoryModel.swift
//  SSStoryStatus
//
//  Created by Krunal Patel on 14/12/23.
//

import Foundation

// MARK: - Story Model
/// The story model containing all necessary information related to story.
@Observable
public class StoryModel: Identifiable {
    
    // MARK: - Vars & Lets
    /// The unique identifier for story,
    public let storyId: String

    /// The media url of story.
    public let storyMediaURL: String

    /// The story creation date.
    public let storyCreationDate: Date

    /// The caption for the story.
    public let storyCaption: String

    /// The type of media.
    public let storyMediaType: MediaType

    /// The current story state.
    public var storyState: StoryState

//    // MARK: - Initializer
    public init(id: String = UUID().uuidString, mediaURL: String, date: Date, caption: String = "", mediaType: MediaType, storyState: StoryState = .unseen) {
        self.storyId = id
        self.storyMediaURL = mediaURL
        self.storyCreationDate = date
        self.storyCaption = caption
        self.storyMediaType = mediaType
        self.storyState = storyState
    }
}

// MARK: - StoryModel Enums
extension StoryModel {
    
    // MARK: - MediaType
    /// The type of media.
    public enum MediaType {
        
        /// The image media type.
        case image

        /// The video media type.
        case video
    }

    // MARK: - StoryState
    /// The type of story status.
    public enum StoryState {
        
        /// Seen story type.
        case seen
        
        /// Unseen story type.
        case unseen
    }
}
