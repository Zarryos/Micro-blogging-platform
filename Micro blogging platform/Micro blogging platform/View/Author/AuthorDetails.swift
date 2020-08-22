//
//  AuthorDetails.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct AuthorDetails: View {
    var author: Author
    @Environment(\.imageCache) var authorAvatarCache: ImageCache
    
    var body: some View {
        VStack {
            HStack {
                    AsyncImage(
                        url: author.avatarUrl,
                        placeholder: Image("person-placeholder").resizable(),
                        cache: authorAvatarCache,
                        configuration: { $0.resizable() })
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    
                    VStack (alignment: .leading) {
                        Text(author.name)
                            .font(.title)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                        
                        Text(author.userName)
                            .font(.headline)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)

                        Text(author.email)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(Color.gray)
                }.padding(8)
                Spacer()
            }.padding(8)
            
            PostsList(authorId: author.id)
        }
    }
}

struct AuthorDetails_Previews: PreviewProvider {
    static var previews: some View {
        AuthorDetails(author: Author(id: 0, name: "Name", userName: "UserName", email: "Email", avatarUrl: URL(string: "https://s3.amazonaws.com/uifaces/faces/twitter/nutzumi/128.jpg")!, address: AuthorCoordinate(latitude: "", longitude: "")))
    }
}
