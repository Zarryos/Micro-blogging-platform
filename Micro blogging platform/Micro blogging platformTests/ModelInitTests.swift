//
//  ModelInitTests.swift
//  Micro blogging platformTests
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import XCTest
@testable import Micro_blogging_platform

class ModelInitTests: XCTestCase {
    
    func testInitAuthor() {
        let id = 0
        let name = "TestName"
        let userName = "TestUserName"
        let email = "test@email.com"
        let avatarUrl = URL(string: "www.testAvatar.com")!
        let address = AuthorCoordinate(latitude: "0", longitude: "0")
        
        let author = Author.init(id: id, name: name, userName: userName, email: email, avatarUrl: avatarUrl, address: address)
        
        XCTAssertEqual(author.id, id)
        XCTAssertEqual(author.name, name)
        XCTAssertEqual(author.userName, userName)
        XCTAssertEqual(author.email, email)
        XCTAssertEqual(author.avatarUrl, avatarUrl)
    }
    
    func testInitPost() {
        let id = 0
        let date = "2017-09-07T09:58:50.972Z"
        let title = "Test title"
        let body = "Test body"
        let imageUrl = URL(string: "www.testImage.com")!
        let authorId = 0
        
        let post = Post.init(id: id, date: date, title: title, body: body, imageUrl: imageUrl, authorId: authorId)
        
        XCTAssertEqual(post.id, id)
        XCTAssertEqual(post.date, date)
        XCTAssertEqual(post.title, title)
        XCTAssertEqual(post.body, body)
        XCTAssertEqual(post.imageUrl, imageUrl)
        XCTAssertEqual(post.authorId, authorId)
    }
    
    func testInitComment() {
        let id = 0
        let date = "2017-09-07T09:58:50.972Z"
        let body = "Test body"
        let userName = "TestUserName"
        let email = "test@email.com"
        let avatarUrl = URL(string: "www.testAvatar.com")!
        let postId = 0
        
        let comment = Comment.init(id: id, date: date, body: body, userName: userName, email: email, avatarUrl: avatarUrl, postId: postId)
        
        XCTAssertEqual(comment.id, id)
        XCTAssertEqual(comment.date, date)
        XCTAssertEqual(comment.body, body)
        XCTAssertEqual(comment.userName, userName)
        XCTAssertEqual(comment.email, email)
        XCTAssertEqual(comment.avatarUrl, avatarUrl)
        XCTAssertEqual(comment.postId, postId)
    }
}
