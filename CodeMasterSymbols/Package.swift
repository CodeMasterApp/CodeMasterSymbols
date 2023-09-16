// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CodeMasterSymbols",
    platforms: [
        .macOS(.v13), // Ventura: TODO: Update to Sonoma (v.14)
        .iOS(.v16) // Fix build error, added a bunch of #if os(macOS) to not get ios errors.
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CodeMasterSymbols",
            targets: ["CodeMasterSymbols"]),
    ],
    dependencies: [
        .package(
            name: "SnapshotTesting",
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.9.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CodeMasterSymbols"),
        .testTarget(
            name: "CodeMasterSymbolsTests",
            dependencies: [
                "CodeMasterSymbols",
                "SnapshotTesting"
            ]
        ),
    ]
)
