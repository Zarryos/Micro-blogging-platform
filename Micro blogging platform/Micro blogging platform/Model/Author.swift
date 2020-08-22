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
    var userName: String
    /// Email
    var email: String
    /// Avatar URL, expecting a picture from it
    var avatarUrl: URL
    /// Author coordinates
    var address: AuthorCoordinate
    
    /**
     Initializes a new Author with the provided attributes
      - Parameters:
        - id: It's unique identifier
        - name: The author name
        - userName: The author user name
        - email: The author email
        - avatarUrl: The author avatar URL, that store the avatar picture
        - address: The author coordinates
     
     - Returns: A simple Author object to work with
     */
    init(id: Int, name: String, userName: String, email: String, avatarUrl: URL, address: AuthorCoordinate) {
        self.id = id
        self.name = name
        self.userName = userName
        self.email = email
        self.avatarUrl = avatarUrl
        self.address = address
    }
    
    /// A mapping between the Author attributes and the fields in the Json response
    enum CodigKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case userName = "userName"
        case email = "email"
        case avatarUrl = "avatarUrl"
        case address = "address"
    }
}

/// A set of latitude and longitude dedicated to the author
struct AuthorCoordinate: Decodable {
    /// Latitude and longitude
    let latitude, longitude: String
    
    /**
     Initializes a new AuthorCoordinates with the provided attributes
      - Parameters:
        - latitude: Angular distance from the author location to the equator
        - longitude: Angular distance from the author location to a prime meridian
     
     - Returns: The author coordinates
     */
    init(latitude: String, longitude: String) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    /// A mapping between the AuthorCoordinates attributes and the fields in the Json response
    enum CodigKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
    }
}
