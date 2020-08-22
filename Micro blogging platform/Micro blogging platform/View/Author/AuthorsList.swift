//
//  AuthorsList.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct AuthorsList: View {
    @ObservedObject var authorsObservable = AuthorObservable()
    
    var body: some View {
        List (authorsObservable.authors) { author in
            AuthorRow(author: author)
        }
    }
}

struct AuthorsList_Previews: PreviewProvider {
    static var previews: some View {
        AuthorsList()
    }
}
