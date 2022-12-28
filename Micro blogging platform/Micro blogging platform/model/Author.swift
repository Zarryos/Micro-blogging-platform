//
//  Author.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation

/// An human who write Post
struct Author: Decodable, Identifiable {
    /// Unique identifier
    var id: Int
    /// Name
    var name: String
    /// User name
    var username: String
    /// Email
    var email: String
    
    /**
     Initializes a new Author with the provided attributes
      - Parameters:
        - id: It's unique identifier
        - name: The author name
        - username: The author user name
        - email: The author email
     
     - Returns: An Author object
     */
    init(id: Int, name: String, username: String, email: String) {
        self.id = id
        self.name = name
        self.username = username
        self.email = email
    }
    
    /// A mapping between the Author attributes and the fields in the Json response
    enum CodigKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case username = "username"
        case email = "email"
    }
}
