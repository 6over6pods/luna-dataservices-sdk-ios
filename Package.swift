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
            url: "https://glasseson.jfrog.io/artifactory/luna-dataservices-sdk-ios-local/8.6.1-444/PHISDK.xcframework.zip",
            checksum: "7fb68fd0570ee3fee9ecd450df8cc16dc9470f1254f090a619fd9afaee86bc1c"
        )
    ]
)
