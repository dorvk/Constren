# Constren 🚂.🚃.🚋.🚃.🚋.🚃.🚋.🚃.🚋
Make trains of constraints with style!

# Installation

# Cocoapods
To integrate Constren into your project using CocoaPods, add it in your Podfile:

    pod 'Constren', :git => 'https://github.com/dorvk/Constren.git'

# Example

    let button = UIButton()
        
    view.addSubview(button)

    button.constrain.centerY()
                    .lead(spacing: 16)
                    .trail(spacing: 64)
                    .height(100)
