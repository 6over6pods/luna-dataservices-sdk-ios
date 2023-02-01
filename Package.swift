// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PHI",
    defaultLocalization: "en-US",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PHI",
            targets: ["PHIWrapper"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/mixpanel/mixpanel-swift",
            "3.2.0" ..< "4.0.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PHIWrapper",
            dependencies: [.product(name: "Mixpanel", package: "mixpanel-swift"),
                           .target(name: "PHI")]
        ),
        .binaryTarget(
            name: "PHI",
            url: "https://fileserver.test.glasseson.com/PHI.xcframework.zip",
            checksum: "2268025e8c2c8613f9713bdd3132ba89c394fcc12ce95f3d164181f44bd14c9c"
        )
    ]
)
