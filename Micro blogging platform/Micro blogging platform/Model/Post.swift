//
//  Post.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation

struct Post: Decodable, Identifiable {
    var id: Int
    var date: String
    var formattedDate: Date? {
        get {
            return date.toDate()
        }
    }
    var title: String
    var body: String
    var imageUrl: URL
    var authorId: Int
    
    init(id: Int, date: String, title: String, body: String, imageUrl: URL, authorId: Int) {
        self.id = id
        self.date = date
        self.title = title
        self.body = body
        self.imageUrl = imageUrl
        self.authorId = authorId
    }
    
    enum CodigKeys: String, CodingKey {
        case id = "id"
        case date = "date"
        case title = "title"
        case body = "body"
        case imageUrl = "imageUrl"
        case authorId = "authorId"
    }
}
