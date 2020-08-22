//
//  CommentObservable.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation
import Alamofire

class CommentObservable: ObservableObject {
    @Published var comments = [Comment]()
    
    init(postId: Int? = nil) {
        getPostComments(postId)
    }
    
    fileprivate func getPostComments (_ postId: Int? = nil) {
        AF.request("https://sym-json-server.herokuapp.com/comments")
            .validate()
            .responseDecodable(of: [Comment].self) { response in
                guard let fetchedComments = response.value else { return }
                self.comments += fetchedComments
        }
    }
}
