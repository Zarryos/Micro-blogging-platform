//
//  PostList.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct PostsList: View {
    @ObservedObject var postsObservable = PostObservable()
    
    var body: some View {
        Section(header: Text("List of posts").font(.title), content: {
            List (postsObservable.posts) { post in
                PostRow(post: post)
            }
        })
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostsList()
    }
}
