//
//  ImageCache.swift
//  Micro blogging platform
//
//  Created by user177985 on 8/22/20.
//  Copyright © 2020 user177985. All rights reserved.
//

import Foundation
import UIKit

/// A protocol that return an UIImage? from a URL
protocol ImageCache {
    subscript(_ url: URL) -> UIImage? { get set }
}

/// An NSCache that store an UIImage with an URL as key
struct TemporaryImageCache: ImageCache {
    /// NSCache declaration
    private let cache = NSCache<NSURL, UIImage>()
        
    /**
     A subscript that remove or set an image from the specified URL key
     
     - Returns: An UIImage? stored in the cache with the specified URL key
     */
    subscript(_ key: URL) -> UIImage? {
        get { cache.object(forKey: key as NSURL) }
        set { newValue == nil ? cache.removeObject(forKey: key as NSURL) : cache.setObject(newValue!, forKey: key as NSURL) }
    }
}
