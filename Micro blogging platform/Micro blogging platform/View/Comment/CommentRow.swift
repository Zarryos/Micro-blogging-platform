//
//  CommentRow.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct CommentRow: View {
    var comment: Comment
    @Environment(\.imageCache) var commentImageCache: ImageCache
    
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                AsyncImage(
                    url: comment.avatarUrl,
                    placeholder: Image("person-placeholder").resizable(),
                    cache: commentImageCache,
                    configuration: { $0.resizable() })
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                    .shadow(radius: 4)
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                
                 VStack (alignment: .leading) {
                     Text(comment.userName)
                         .font(.headline)
                     
                     Text(comment.email)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                 }
                 Spacer()
            }
            
            Text(comment.body)
        }.padding()
    }
}

struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow(comment: Comment(id: 0, date: "2017-09-07T09:58:50.972Z", body: "That's an amazing post!", userName: "Zarryos", email: "test@email.com", avatarUrl: URL(string: "https://s3.amazonaws.com/uifaces/faces/twitter/nutzumi/128.jpg")!, postId: 0)).previewLayout(.fixed(width: 300, height: 100))
    }
}
