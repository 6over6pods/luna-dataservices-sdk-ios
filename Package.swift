// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PHISDK",
    defaultLocalization: "en-US",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PHISDK",
            targets: ["PHIWrapper"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PHIWrapper",
            dependencies: [.target(name: "PHISDK")]
        ),
        .binaryTarget(
            name: "PHISDK",
            url: "https://glasseson.jfrog.io/artifactory/luna-dataservices-sdk-ios-local/8.3.0/PHISDK.xcframework.zip",
            checksum: "de3881c9a333f92a7692654fc76ff97fd27b7d27ae66a69a52c5936e9c18dd3c"
        )
    ]
)
