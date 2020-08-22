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
    @Environment(\.imageCache) var postImageCache: ImageCache
    
    var body: some View {
        HStack {
            AsyncImage(
                url: post.imageUrl,
                placeholder: Image("post-placeholder").resizable(),
                cache: postImageCache,
                configuration: { $0.resizable() })
                .frame(width: 64, height: 64)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 10)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.white, lineWidth: 4))
            
            VStack (alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: Post(id: 0, date: "2017-09-07T09:58:50.972Z", title: "An amazing app is made on a lovely day", body: "I have no words", imageUrl: URL(string: "https://picsum.photos/id/146/640/480")!, authorId: 0)).previewLayout(.fixed(width: 300, height: 128))
    }
}
