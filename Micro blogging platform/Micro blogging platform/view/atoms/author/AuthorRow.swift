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
                url: URL(string: "https://picsum.photos/64/64")!,
                placeholder: Image("person-placeholder").resizable(),
                cache: authorAvatarCache,
                configuration: { $0.resizable() })
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .shadow(radius: 8)
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
        AuthorRow(author: Author(id: 0, name: "Florian LOUVET", username: "Zarryos", email: "test@email.com"))
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
