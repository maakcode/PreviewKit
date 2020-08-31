// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PreviewKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "PreviewKit",
            targets: ["PreviewKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PreviewKit",
            dependencies: []),
        .testTarget(
            name: "PreviewKitTests",
            dependencies: ["PreviewKit"]),
    ]
)
