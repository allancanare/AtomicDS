// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AtomicDS",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AtomicDS",
            targets: ["AtomicDS"]),
    ],
    targets: [
        .target(
            name: "AtomicDS"),
        .testTarget(
            name: "AtomicDSTests",
            dependencies: ["AtomicDS"]),
    ]
)
