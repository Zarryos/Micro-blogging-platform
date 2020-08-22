//
//  AsyncImage.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import SwiftUI

struct AsyncImage<Placeholder: View>: View {
    @ObservedObject private var loader: ImageLoaderObservable
    private let placeholder: Placeholder?
    
    private let configuration: (Image) -> Image
    
    init(url: URL, placeholder: Placeholder? = nil, cache: ImageCache? = nil, configuration: @escaping (Image) -> Image = { $0 }) {
        loader = ImageLoaderObservable(url: url, cache: cache)
        self.placeholder = placeholder
        self.configuration = configuration
    }

    var body: some View {
        image
            .onAppear(perform: loader.load)
            .onDisappear(perform: loader.cancel)
    }
    
    private var image: some View {
        Group {
            if loader.image != nil {
                configuration(Image(uiImage: loader.image!))
            } else {
                placeholder
            }
        }
    }
}
