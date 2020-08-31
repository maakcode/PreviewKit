# PreviewKit

Missing features of SwiftUI's Previews.

## Features
- [x] Autocomplete device name 
No more hard-coded device name. It it 21st century. 🤬 
![Autocomplete device name](https://raw.githubusercontent.com/Makeeyaf/PreviewKit/master/previewkit-1.png)
- [x] Landscape mode support 
Unfortunately, Safe layout area is not supported in landscape mode. 🤨 
![Landscape mode support](https://raw.githubusercontent.com/Makeeyaf/PreviewKit/master/previewkit-2.png)
- [x] Automatically name the preview according to the it's options.   
![Automatically name the preview according to the it's options](https://raw.githubusercontent.com/Makeeyaf/PreviewKit/master/previewkit-3.png)
## Requirements
- iOS 13.0+ / macOS 10.15+
- Xcode 11+
- Swift 5.1+

## Installation
### Swift Package Manager
Adding PreviewKit as a dependency is as easy as adding it to the dependencies value of your Package.swift.
```swift
dependencies: [
    .package(url: "https://github.com/Makeeyaf/PreviewKit.git", .upToNextMajor(from: "1.0.1"))
]
```
## Usage
```swift
import SwiftUI
import PreviewKit

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewOptions(layoutMode: .landscape(.iPhone8Plus))
            ContentView().previewOptions(title: "Set title explicitly", layoutMode: .landscape(.iPhone8Plus))
            ContentView().previewOptions(layoutMode: .sizeThatFits)
        }        
    }
}
```
## License
PreviewKit is released under the MIT license. See LICENSE for details.
