//
//  PostRow.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct PostRow: View {
    var post: Post
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(post.title)
                .font(.headline)
                .multilineTextAlignment(.leading)
        }
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: Post(id: 0, date: "2017-09-07T09:58:50.972Z", title: "An amazing app is made on a lovely day", body: "I have no words", imageUrl: URL(string: "https://picsum.photos/id/146/640/480")!, authorId: 0)).previewLayout(.fixed(width: 300, height: 128))
    }
}
