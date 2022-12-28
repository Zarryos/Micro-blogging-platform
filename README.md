# Micro-blogging-platform

[![Swift Version](https://img.shields.io/badge/Swift-5.0.x-orange.svg)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This app is designed to be the base app of a blogging platform, easily modifiable to add more features in the future.  

It shows some basics of iOS (Swift, SwiftUI) development, and demonstrate my way of doing it.

## Features
 - [x] A list of authors, clicking on a row bring you to the details screen
 - [x] The author details screen, with the authors details and a list of posts written by this author
 - [x] The post details screen, with the post details and a list of comments about the post

## Requirements
- iOS 13.0+
- XCode 11.6+

## Usage
Use Git or checkout with SVN using the web URL : 
```
https://github.com/Zarryos/Micro-blogging-platform.git
```

From a terminal, go to the project folder and run : 
```
pod install
```

## Notes on project development  
### Some context  
At the time I wrote this, I didn't have the opportunity to work on a profesional iOS project for the past four years (I had 2.5 years of experience on it prior this).
But to keep me in touch with iOS development, I've completed two micro-projects :   
- [x] https://developer.apple.com/tutorials/swiftui/  
- [x] https://www.raywenderlich.com/7864801-combine-getting-started  

This was two of the news features introduced this past five years I wanted to explore before doing this project.  

### Technical choices  
#### [SwiftUI](https://developer.apple.com/xcode/swiftui/)  
I choosed to work with SwiftUI, since this was a good opportunity to learn this way of creating views.  
#### [Alamofire](https://github.com/Alamofire/Alamofire)
The standard networking pod who is still active and the most reliable I've used.  
#### AsyncImage  
I'm aware that [AlamofireImage](https://github.com/Alamofire/AlamofireImage) handle caching and async image fetching easily, but I've decided to make my own implementation of it since this was an opportunity to refresh my memory on iOS caching.  
#### [Observable](https://developer.apple.com/documentation/combine/observableobject)
I've used ObservableObject mostly because it's the new way of observing objects and this app is designed to an MVP that showcase that feature.

### Versionning
To focus on the project itself, I've worked directly on master. This is not the best thing to do and you may not do this at home.  
In a professional environment I'm working with branches and PR's : `feature/comment-section` or `fix/author-image-size`

### Project possible improvements  

#### UI/UX  
- A parallax header would make posts/comments reading a better experience.  
- Implement a list placeholder showing the authors/posts/comments are loading.
- The UI is basic, it could use a lot of improvements!

#### CoreData  
I decided to not include CoreData in this MVP version, but that could be an idea!

#### Error handling
Handling API error with an observed error state would be important for UX (and error tracking on our end)

#### Testing
I've decided to implement two basic set of tests : Objects inits & APICalls measured. Of course, there could be a lot more tests implemented.

## Time spent
The repartition of time used to make this project is the following : 
- [x] 4h initial researchs on SwiftUI/Combine documentation, who did indirectly helped in this project. 
- [x] 1h on project design, app scketch & technical choices
- [x] 5h on main project development
- [x] 0.5h on tests
- [x] 1h on project documentation
- [x] 2h on project update, testing and new placeholder api implementation (in 2022)

For a total of 9.5h (+4h on a SwiftUI playground).  
