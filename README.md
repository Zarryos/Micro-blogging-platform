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
pod intall
```

## Notes on project development  
### Some context  
At the time I wrote this, I didn't have the opportunity to work on a profesional iOS project for the past two years (but i had 2.5 years of experience on it prior this).  
But to keep me in touch with iOS development, I've completed two micro-projects this past week :   
- [x] https://developer.apple.com/tutorials/swiftui/  
- [x] https://www.raywenderlich.com/7864801-combine-getting-started  

This was two of the news features introduced this past two years I wanted to explore before doing this project.  

### Technical choices  
#### [SwiftUI](https://developer.apple.com/xcode/swiftui/)  
I choosed to work with SwiftUI, since I'm more used to storyboard and this was a good opportunity to learn this way of creating views.  
#### [Alamofire](https://github.com/Alamofire/Alamofire)
The standard networking pod who is still active and the most reliable I've used.  
#### AsyncImage  
I'm aware that [AlamofireImage](https://github.com/Alamofire/AlamofireImage) handle caching and async image fetching easily, but I've decided to make my own implementation of it since this was an opportunity to refresh my memory on iOS caching.  
#### [Observable](https://developer.apple.com/documentation/combine/observableobject)
I've used ObservableObject mostly because it's the new way of observing objects, and this app is designed to be improved. In a established iOS app i would probably recommend RxSwift at the time i wrote this, since it will unsure the compatibility with older versions of iOS.  

### Versionning
To focus on the project itself, I've worked directly on master. This is not the best thing to do and you may not do this at home.  
In a professional working environment I'm working with branches and merge request, I regret my choice now since this project history does not demonstrate that point.

### Project possible improvements  
#### UI/UX  
- I did not use the author coordinates, as I think putting a marker on a map would not be a useful information in this app. However, I would have used either a city/country string send by the api or made a call on GoogleAPI to get an address from a set of coordinates.  
- The classic parallax header would make posts/comments reading a better experience.  
- I've implemented images placeholders, but an improvement would be to implement a list placeholder showing the user the authors/posts/comments are loading.
#### CoreData  
I decided to not include CoreData in this version, since there is already some image caching.  However, if I had more time I would use it (because I'm always assuming the server response is slow).  
#### Testing
The only limits that tests have is the component's usage thought by the developers. In order to *keep sleeping this weekend* I've decided to implement two tests : Objects inits & APICalls measured. Of course, there could be a lot more tests implemented.

## Time spent
The repartition of time used to make this project is the following : 
- [x] 4 hours initial researchs on SwiftUI/Combine documentation, who did indirectly helped in this project. 
- [x] 1 hour on project design, app scketch & technical choices
- [x] 5 hours on main project development
- [x] 0.5 hour on tests
- [x] 3 hours on project documentation

For a total of 13.5 hours.  
*I've enjoyed this time, it's good working with Swift again !* 

## Contribute
Even if this app shows only some basics, i'm always trying to improve and any feedback would be appreciated.  
If you find any issue or possible improvement with the code feel free to leave an [issue](https://github.com/Zarryos/Micro-blogging-platform/issues). I'll always appreciate contibutor's point of view ! 
