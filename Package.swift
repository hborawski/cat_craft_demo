// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CraftInterview",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [],
    dependencies: [
        // Tools
        .package(url: "https://github.com/yonaskolb/XcodeGen.git", .upToNextMajor(from: "2.29.0")),
    ],
    targets: []
)