//
//  Comment.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation

/// A message redacted from a user about a Post
struct Comment: Decodable, Identifiable {
    /// Unique identifier
    var id: Int
    /// Redaction date
    var date: String
    /// Redaction date, casted to a Date? type
    var formattedDate: Date? {
        get {
            return date.toDate()
        }
    }
    /// Content of the comment
    var body: String
    /// User name that wrote the content
    var userName: String
    /// Email of the user
    var email: String
    /// User avatar URL, expecting a picture from it
    var avatarUrl: URL
    /// Associated Post unique identifier
    var postId: Int
    
    /**
     Initializes a new Comment  with the provided attributes
      - Parameters:
        - id: It's unique identifier
        - date: The redaction date, string format
        - body: Content of the comment
        - userName: Name of the associated user
        - email: Email of the associated user
        - avatarUrl: The avatar URL, that store a picture of the associated user
        - postId: The associated Post  unique identifier
     
     - Returns: A simple Comment object to work with
     */
    init(id: Int, date: String, body: String, userName: String, email: String, avatarUrl: URL, postId: Int) {
        self.id = id
        self.date = date
        self.body = body
        self.userName = userName
        self.email = email
        self.avatarUrl = avatarUrl
        self.postId = postId
    }
    
    /// A mapping between the Comment attributes and the fields in the Json response
    enum CodigKeys: String, CodingKey {
        case id = "id"
        case date = "date"
        case body = "body"
        case userName = "userName"
        case email = "email"
        case avatarUrl = "avatarUrl"
        case postId = "postId"
    }
}
