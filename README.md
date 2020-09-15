# PreviewKit

Missing features of SwiftUI's Previews.

## Features
### Autocomplete device name
No more hard-coded device name. It it 21st century. 🤬 

![Autocomplete device name](https://raw.githubusercontent.com/Makeeyaf/PreviewKit/master/previewkit-1.png)
### Landscape mode support 
Unfortunately, Safe layout area is not supported in landscape mode. 🤨 

![Landscape mode support](https://raw.githubusercontent.com/Makeeyaf/PreviewKit/master/previewkit-2.png)
### Automatically name the preview according to the it's options. 
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
## Supported Devices
### iPhone
<table>
  <thead>
    <tr>
      <th>Device Name</th>
      <th align="center">UIKit Size(Points)</th>
      <th align="center">UIKit Scale factor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>iPhone 4s</td>
      <td align="center">320 x 480</td>
      <td align="center">2</td>
    </tr>
    <tr>
      <td>iPhone 5</td>
      <td align="center" rowspan=4>320 x 568</td>
      <td align="center" rowspan=4>2</td>
    </tr>
    <tr>
      <td>iPhone 5s</td>
    </tr>
    <tr>
      <td>iPhone 5c</td>
    </tr>
    <tr>
      <td>iPhone SE (1st generation)</td>
    </tr>
    <tr>
      <td>iPhone SE (2nd generation)</td>
      <td align="center" rowspan=5>375 x 667</td>
      <td align="center" rowspan=5>2</td>
    </tr>
    <tr>
      <td>iPhone 6</td>
    </tr>
    <tr>
      <td>iPhone 6s</td>
    </tr>
    <tr>
      <td>iPhone 7</td>
    </tr>
    <tr>
      <td>iPhone 8</td>
    </tr>
    <tr>
      <td>iPhone 6 Plus</td>
      <td align="center" rowspan=4>414 x 736</td>
      <td align="center" rowspan=4>2.608</td>
    </tr>
    <tr>
      <td>iPhone 6s Plus</td>
    </tr>
    <tr>
      <td>iPhone 7 Plus</td>
    </tr>
    <tr>
      <td>iPhone 8 Plus</td>
    </tr>
    <tr>
      <td>iPhone 11 Pro</td>
      <td align="center" rowspan=3>375 x 812</td>
      <td align="center" rowspan=3>3</td>
    </tr>
    <tr>
      <td>iPhone X</td>
    </tr>
    <tr>
      <td>iPhone Xs</td>
    </tr>
    <tr>
      <td>iPhone 11</td>
      <td align="center" rowspan=2>414 x 896</td>
      <td align="center" rowspan=2>2</td>
    </tr>
    <tr>
      <td>iPhone Xʀ</td>
    </tr>
    <tr>
      <td>iPhone 11 Pro Max</td>
      <td align="center" rowspan=2>414 x 896</td>
      <td align="center" rowspan=2>3</td>
    </tr>
    <tr>
      <td>iPhone Xs Max</td>
    </tr>
  </tbody>
</table>

### iPad
<table>
  <thead>
    <tr>
      <th>Device Name</th>
      <th align="center">UIKit Size(Points)</th>
      <th align="center">UIKit Scale factor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>iPad 2</td>
      <td align="center">768 x 1024</td>
      <td align="center">1</td>
    </tr>
    <tr>
      <td>iPad with Retina display</td>
      <td align="center" rowspan=10>768 x 1024</td>
      <td align="center" rowspan=10>2</td>
    </tr>
    <tr>
      <td>iPad Air</td>
    </tr>
    <tr>
      <td>iPad mini 2</td>
    </tr>
    <tr>
      <td>iPad mini 3</td>
    </tr>
    <tr>
      <td>iPad mini 4</td>
    </tr>
    <tr>
      <td>iPad Air 2</td>
    </tr>
    <tr>
      <td>iPad (5th generation)</td>
    </tr>
    <tr>
      <td>iPad (6th generation)</td>
    </tr>
    <tr>
      <td>iPad mini 2</td>
    </tr>
    <tr>
      <td>iPad Pro (9.7-inch)</td>
    </tr>
    <tr>
      <td>iPad (7th generation)</td>
      <td align="center">810 x 1080</td>
      <td align="center">2</td>
    </tr>
    <tr>
      <td>iPad Air (3rd generation)</td>
      <td align="center" rowspan=2>834 x 1112</td>
      <td align="center" rowspan=2>2</td>
    </tr>
    <tr>
      <td>iPad Pro (10.5-inch)</td>
    </tr>
    <tr>
      <td>iPad Pro (11-inch) (1st generation)</td>
      <td align="center" rowspan=2>834 x 1194</td>
      <td align="center" rowspan=2>2</td>
    </tr>
    <tr>
      <td>iPad Pro (11-inch) (2nd generation)</td>
    </tr>
    <tr>
      <td>iPad Pro (12.9-inch)</td>
      <td align="center" rowspan=4>1024 x 1366</td>
      <td align="center" rowspan=4>2</td>
    </tr>
    <tr>
      <td>iPad Pro (12.9-inch) (2nd generation)</td>
    </tr>
    <tr>
      <td>iPad Pro (12.9-inch) (3rd generation)</td>
    </tr>
    <tr>
      <td>iPad Pro (12.9-inch) (4th generation)</td>
    </tr>
  </tbody>
</table>

## License
PreviewKit is released under the MIT license. See LICENSE for details.
