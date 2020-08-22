//
//  PostObservable.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation
import Alamofire

class PostObservable: ObservableObject {
    @Published var posts = [Post]()
    
    init(authorId: Int? = nil) {
        getAuthorPosts(authorId)
    }
    
    fileprivate func getAuthorPosts (_ authorId: Int? = nil) {
        AF.request("https://sym-json-server.herokuapp.com/posts")
            .validate()
            .responseDecodable(of: [Post].self) { response in
                guard let fetchedPosts = response.value else { return }
                self.posts += fetchedPosts
        }
    }
}
