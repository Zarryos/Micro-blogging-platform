//
//  AuthorObservable.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation
import Alamofire

class AuthorObservable: ObservableObject {
    @Published var authors = [Author]()
    
    init() {
        getAuthors()
    }
    
    fileprivate func getAuthors () {
        AF.request("https://sym-json-server.herokuapp.com/authors")
            .validate()
            .responseDecodable(of: [Author].self) { response in
                guard let fetchedAuthors = response.value else { return }
                
                self.authors += fetchedAuthors
            }
    }
}
