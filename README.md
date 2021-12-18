[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Constren](https://img.shields.io/badge/Platform-iOS-hotpink.svg)](https://github.com/dorvk/Constren.git) [![Cocoapods](https://img.shields.io/badge/pod-v1.0.1-green.svg)](https://cocoapods.org/pods/Constren)
# Constren 🚂.🚃.🚋
Make trains of constraints with style!

    button.constren
        .centerY()
        .lead(spacing: 16)
        .trail(image.leadingAnchor, spacing: 64)    
        .height(100, relation: .greaterThan)
                       
Constren is an easy to use layout tool for UIKit

# Requirements

- iOS 10.0+
- Xcode 10.0+
- Swift 4.0+
                   
# Installation

## Cocoapods

To add Constren into your project using [CocoaPods](https://cocoapods.org/), add it in your Podfile:

    pod 'Constren', :git => 'https://github.com/dorvk/Constren.git'
    
## Carthage

To add Constren into your project using [Carthage](https://github.com/Carthage/Carthage), specify it in your Cartfile:

    github "dorvk/Constren"
    
## Swift Package Manager

To add Constren into your project using [Swift Package Manager](https://www.swift.org/package-manager/), add following into your Package.swift file,

    dependencies: [ .package(url: "https://github.com/dorvk/Constren.git", from: "1.0.3") ]
    
## Manually

Add the Sources folder into your project.

# Example

    import Constren
    
    let imageView = UIImageView()
    
    view.addSubview(imageView)

    imageView.constren
        .top()                                   // default is equalToSuperview with 0 spacing
        .lead(spacing: 16)                       // you can add spacing
        .trail(label.leadingAnchor, spacing: 16) 
        .height(100, relation: .greaterThan)     // supports lessThan or greaterThan, default is equalTo
        
    var constraint = imageView.constren
                        .width(50)
                        .asNSLayoutConstraint
                        
    constraint?.constant = 100                   // supports constant updating 
 -----------
                      
    tableView.constren.fill()                                  // shortcuts
    
    collectionView.constren.fill(lead: 16, bot: 32)
    
    titleLabel.constren
        .horizontalFill(lead: 16)
        .centerY(spacing: 16)
                        
    imageView.constren
        .centered(x: 16)
        .squared(250)

