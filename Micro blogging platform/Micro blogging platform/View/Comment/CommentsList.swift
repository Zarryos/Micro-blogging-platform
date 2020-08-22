//
//  CommentsList.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI


struct CommentList: View {
    @ObservedObject var commentsObservable = CommentObservable()
    
    var body: some View {
        List (commentsObservable.comments) { comment in
            CommentRow(comment: comment)
        }
    }
}

struct CommentList_Previews: PreviewProvider {
    static var previews: some View {
        CommentList()
    }
}
