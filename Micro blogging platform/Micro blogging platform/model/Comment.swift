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
    /// Content of the comment
    var body: String
    /// Name related to the content
    var name: String
    /// Email of the user
    var email: String
    /// Associated Post unique identifier
    var postId: Int
    
    /**
     Initializes a new Comment  with the provided attributes
      - Parameters:
        - id: It's unique identifier
        - body: Content of the comment
        - name: Name related to the content
        - email: Email of the associated user
        - postId: The associated Post  unique identifier
     
     - Returns: A Comment object
     */
    init(id: Int, body: String, name: String, email: String, postId: Int) {
        self.id = id
        self.body = body
        self.name = name
        self.email = email
        self.postId = postId
    }
    
    /// A mapping between the Comment attributes and the fields in the Json response
    enum CodigKeys: String, CodingKey {
        case id = "id"
        case body = "body"
        case name = "userName"
        case email = "email"
        case postId = "postId"
    }
}
