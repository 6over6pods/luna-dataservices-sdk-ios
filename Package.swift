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
            url: "https://glasseson.jfrog.io/artifactory/luna-dataservices-sdk-ios-local/8.6.1-190-193-195-197-199-201-203-205-207-209-211-213-215-217-220-221-223-225-227-229-231-233-235-237-239-241-243-245-247-249-251-253-255-257-259-261-263-265-267-269-271-273-275-277-279-281-283-285-287-289-291/PHISDK.xcframework.zip",
            checksum: "8db5e26e31d8ecd4ae36be1a1671f7ee3aeec2ee10010ad010e08f29cffb67d1"
        )
    ]
)
