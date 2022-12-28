//
//  PostList.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct PostsList: View {
    var userId: Int
    @ObservedObject var postsObservable: PostObservable
    
    init(userId: Int) {
        self.userId = userId
        postsObservable = PostObservable(userId: userId)
    }
    
    var body: some View {
        List (postsObservable.posts) { post in
            NavigationLink(destination: PostDetails(post: post)) {
                PostRow(post: post)
            }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostsList(userId: 0)
    }
}
