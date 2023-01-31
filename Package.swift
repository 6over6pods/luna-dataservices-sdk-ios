// swift-tools-version:5.7
import PackageDescription
 
let package = Package(
    name: "PHISDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "PHILunaSDK",
            targets: ["PHILunaSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "PHILunaSDK",
            url: "https://glasseson.jfrog.io/ui/native/swift-virtual/PHILunaSDK.xcframework.zip",
            checksum: "c9b0f682385c6e66a65901a1f1d40c9f0e88d3eeb0c752046cede42ab2420b5d"
        )
    ]
)
