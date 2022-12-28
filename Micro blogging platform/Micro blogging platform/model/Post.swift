//
//  Post.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation

/// A group of informations redacted by an Author
struct Post: Decodable, Identifiable {
    /// Unique identifier
    var id: Int
    /// Title describing the post
    var title: String
    /// Content written by the author
    var body: String
    /// Associated Author unique identifier
    var userId: Int
    
    /**
     Initializes a new Post  with the provided attributes
      - Parameters:
        - id: It's unique identifier
        - title: Title describing the post
        - body: Content of the post
        - userId: The associated Author unique identifier
     
     - Returns: A Post object
     */
    init(id: Int, title: String, body: String, userId: Int) {
        self.id = id
        self.title = title
        self.body = body
        self.userId = userId
    }
    
    /// A mapping between the Post attributes and the fields in the Json response
    enum CodigKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case body = "body"
        case userId = "userId"
    }
}
