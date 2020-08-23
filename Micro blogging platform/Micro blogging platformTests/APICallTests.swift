//
//  APICallTests.swift
//  Micro blogging platformTests
//
//  Created by user177985 on 8/23/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import XCTest
import Alamofire
@testable import Micro_blogging_platform

class test_symphonyTests: XCTestCase {
    
    func testGetAuthors() {
        self.measure {
            let promise = expectation(description: "Getting Author objects")
            
            AF.request("https://sym-json-server.herokuapp.com/authors")
                .validate()
                .responseDecodable(of: [Author].self) { response in
                    if let _ = response.value {
                        promise.fulfill()
                    } else {
                        XCTFail("Api did return unexpected object")
                    }
                }
            
            wait(for: [promise], timeout: 2)
        }
    }
        
    func testGetPostsOfAuthor() {
        self.measure {
            let promise = expectation(description: "Getting Post objects")
            
            AF.request("https://sym-json-server.herokuapp.com/posts?authorId=0")
                .validate()
                .responseDecodable(of: [Post].self) { response in
                    if let _ = response.value {
                        promise.fulfill()
                    } else {
                        XCTFail("Api did return unexpected object")
                    }
                }
            
            wait(for: [promise], timeout: 2)
        }
    }
    
    func testGetCommentsOfPostSorted() {
        self.measure {
            let promise = expectation(description: "Getting Comment objects")
            
            AF.request("https://sym-json-server.herokuapp.com/comments?postId=0_sort=date&_order=desc")
                .validate()
                .responseDecodable(of: [Comment].self) { response in
                    if let _ = response.value {
                        promise.fulfill()
                    } else {
                        XCTFail("Api did return unexpected object")
                    }
                }
            
            wait(for: [promise], timeout: 2)
        }
    }
}
