//
//  AuthorRow.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct AuthorRow: View {
    var author: Author
    @Environment(\.imageCache) var authorAvatarCache: ImageCache
    
    var body: some View {
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
                
            Text(author.name)
                .font(.title)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .padding()
            
            Spacer()
        }.padding(8)
    }
}

struct AuthorRow_Previews: PreviewProvider {
    static var previews: some View {
        AuthorRow(author: Author(id: 0, name: "Florian LOUVET", userName: "Zarryos", email: "test@email.com", avatarUrl: URL(string: "https://s3.amazonaws.com/uifaces/faces/twitter/nutzumi/128.jpg")!, address: AuthorCoordinate(latitude: "0", longitude: "0")))
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
