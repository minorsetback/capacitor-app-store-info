// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorAppStoreInfo",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorAppStoreInfo",
            targets: ["CapacitorAppStoreInfoPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "CapacitorAppStoreInfoPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapacitorAppStoreInfoPlugin"),
        .testTarget(
            name: "CapacitorAppStoreInfoPluginTests",
            dependencies: ["CapacitorAppStoreInfoPlugin"],
            path: "ios/Tests/CapacitorAppStoreInfoPluginTests")
    ]
)