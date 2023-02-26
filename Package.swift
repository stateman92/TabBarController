// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TabBarController",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TabBarController",
            targets: ["TabBarController"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/stateman92/ColorChangingLabel.git", exact: .init(0, 0, 5))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TabBarController",
            dependencies: [
                .product(name: "ColorChangingLabel", package: "ColorChangingLabel")
            ],
            path: "Sources"),
        .testTarget(
            name: "TabBarControllerTests",
            dependencies: ["TabBarController"]),
    ]
)
