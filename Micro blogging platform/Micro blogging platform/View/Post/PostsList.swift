//
//  PostList.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct PostsList: View {
    var authorId: Int
    @ObservedObject var postsObservable: PostObservable
    
    init(authorId: Int) {
        self.authorId = authorId
        postsObservable = PostObservable(authorId: authorId)
    }
    
    var body: some View {
        Section(header: Text("List of posts").font(.title), content: {
            List (postsObservable.posts) { post in
                NavigationLink(destination: PostDetails(post: post)) {
                    PostRow(post: post)
                }
            }
        })
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostsList(authorId: 0)
    }
}
