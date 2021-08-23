# Constren 🚂.🚃.🚋.🚃.🚋.🚃.🚋.🚃.🚋
Make trains of constraints with style!

    button.constrain.centerY()
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
    
## Manually

Add the Sources folder into your project.

# Example

    import Constren
    
    view.addSubview(imageView)

    imageView.constrain.top()                                   // default is equalToSuperview with 0 spacing
                       .lead(spacing: 16)                       // you can add spacing
                       .trail(label.leadingAnchor, spacing: 16) 
                       .height(100, relation: .greaterThan)     // supports lessThan or greaterThan, default is equalTo
                       
    titleLabel.constrain.fill()                                 // lots of shortcuts
    
    descriptionLabel.constrain.horizontalFill(lead: 16)
                              .centerY()
                              .height(150)
That's it
