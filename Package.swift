// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LAResources",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LAResources",
            targets: ["LAResources"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.1.2")
    ],
    targets: [
        .target(
            name: "LAResources",
            dependencies: [
                .product(name: "Lottie", package: "lottie-spm")
            ],
            path: "Sources",
            resources: [
                .process("Resources")
            ]),
    ]
)
