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
    
    init(postId: Int? = nil, displayOrder: DisplayOrder = .descending) {
        getPostComments(postId, displayOrder)
    }
    
    fileprivate func getPostComments (_ postId: Int? = nil, _ displayOrder: DisplayOrder = .descending) {
        var urlString = "https://sym-json-server.herokuapp.com/comments?"
        if postId != nil {
            urlString += "postId=" + String(postId!) + "&"
        }
        urlString += "_sort=date&_order=" + displayOrder.rawValue
    
        AF.request(urlString)
            .validate()
            .responseDecodable(of: [Comment].self) { response in
                guard let fetchedComments = response.value else { return }
                self.comments += fetchedComments
        }
    }
}
