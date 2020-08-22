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
    /// Redaction date
    var date: String
    /// Redaction date, casted to a Date? type
    var formattedDate: Date? {
        get {
            return date.toDate()
        }
    }
    /// Title describing the post
    var title: String
    /// Content written by the author
    var body: String
    /// Image URL, expecting a picture from it
    var imageUrl: URL
    /// Associated Author unique identifier
    var authorId: Int
    
    /**
     Initializes a new Post  with the provided attributes
      - Parameters:
        - id: It's unique identifier
        - date: The redaction date, string format
        - title: Title describing the post
        - body: Content of the post
        - imageUrl: The image URL, that store a picture representing the post
        - authorId: The associated Author unique identifier
     
     - Returns: A simple Post object to work with
     */
    init(id: Int, date: String, title: String, body: String, imageUrl: URL, authorId: Int) {
        self.id = id
        self.date = date
        self.title = title
        self.body = body
        self.imageUrl = imageUrl
        self.authorId = authorId
    }
    
    /// A mapping between the Post attributes and the fields in the Json response
    enum CodigKeys: String, CodingKey {
        case id = "id"
        case date = "date"
        case title = "title"
        case body = "body"
        case imageUrl = "imageUrl"
        case authorId = "authorId"
    }
}
