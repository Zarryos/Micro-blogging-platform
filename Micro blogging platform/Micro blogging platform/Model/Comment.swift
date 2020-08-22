//
//  Comment.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation

struct Comment: Decodable, Identifiable {
    var id: Int
    var date: String
    var body: String
    var userName: String
    var email: String
    var avatarUrl: URL
    var postId: Int
    
    init(id: Int, date: String, body: String, userName: String, email: String, avatarUrl: URL, postId: Int) {
        self.id = id
        self.date = date
        self.body = body
        self.userName = userName
        self.email = email
        self.avatarUrl = avatarUrl
        self.postId = postId
    }
    
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
