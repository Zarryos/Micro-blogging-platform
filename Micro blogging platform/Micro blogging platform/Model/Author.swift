//
//  Author.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation

struct Author: Decodable, Identifiable {
    var id: Int
    var name: String
    var userName: String
    var email: String
    var avatarUrl: URL
    var address: AuthorCoordinate
    
    init(id: Int, name: String, userName: String, email: String, avatarUrl: URL, address: AuthorCoordinate) {
        self.id = id
        self.name = name
        self.userName = userName
        self.email = email
        self.avatarUrl = avatarUrl
        self.address = address
    }
    
    enum CodigKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case userName = "userName"
        case email = "email"
        case avatarUrl = "avatarUrl"
        case address = "address"
    }
}

struct AuthorCoordinate: Decodable {
    let latitude, longitude: String
    
    init(latitude: String, longitude: String) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    enum CodigKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
    }
}
