// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageDependencies",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "PackageDependencies", targets: ["PackageDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "10.26.0")
    ],
    targets: [
        .target(
            name: "PackageDependencies",
            dependencies: [
                .product(name: "FirebasePerformance", package: "firebase-ios-sdk")
            ]
        )
    ]
)
