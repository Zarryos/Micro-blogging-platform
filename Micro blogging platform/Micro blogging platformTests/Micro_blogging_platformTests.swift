//
//  Micro_blogging_platformTests.swift
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
        let avatarUrl = URL(string: "www.test.com")!
        let address = AuthorCoordinate(latitude: "0", longitude: "0")
        
        let author = Author.init(id: id, name: name, userName: userName, email: email, avatarUrl: avatarUrl, address: address)
        
        XCTAssertEqual(author.id, id)
        XCTAssertEqual(author.name, name)
        XCTAssertEqual(author.userName, userName)
        XCTAssertEqual(author.email, email)
        XCTAssertEqual(author.avatarUrl, avatarUrl)
    }
}
