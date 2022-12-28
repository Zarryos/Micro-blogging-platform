//
//  PostDetails.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct PostDetails: View {
    var post: Post
    @Environment(\.imageCache) var postImageCache: ImageCache
    
    var body: some View {
        VStack {
            VStack (alignment: .leading) {
                    HStack {
                        AsyncImage(
                            url: URL(string: "https://picsum.photos/id/146/640/480")!,
                            placeholder: Image("post-placeholder").resizable(),
                            cache: postImageCache,
                            configuration: { $0.resizable() })
                            .frame(width: 96, height: 96)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .shadow(radius: 10)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.white, lineWidth: 4))
                                
                            Text(post.title)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                
                Text(post.body)
                    .multilineTextAlignment(.leading)
                
            }.padding()
            
            CommentsList(postId: post.id)
        }
    }
}

struct PostDetails_Previews: PreviewProvider {
    static var previews: some View {
        PostDetails(post: Post(id: 0, title: "Title", body: "Bodyyy", userId: 0))
    }
}
