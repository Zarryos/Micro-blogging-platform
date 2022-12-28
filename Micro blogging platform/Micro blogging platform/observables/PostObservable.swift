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
    
    init(userId: Int? = nil) {
        getAuthorPosts(userId)
    }
    
    fileprivate func getAuthorPosts (_ userId: Int? = nil) {
        var urlString = baseApiUrl + "/posts"

        if userId != nil {
            urlString += "?userId=" + String(userId!)
        }
    
        AF.request(urlString)
            .validate()
            .responseDecodable(of: [Post].self) { response in
                guard let fetchedPosts = response.value else { return }
                self.posts += fetchedPosts
        }
    }
}
