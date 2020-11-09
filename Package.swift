// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AOC2015",
    products: [
        .library(
            name: "Core",
            targets: ["Core"]
        ),
        .executable(
            name: "CLI",
            targets: ["CLI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "0.0.1"),
        .package(url: "https://github.com/proxpero/Parser.git", from: "0.0.1"),
        .package(url: "https://github.com/proxpero/AOC.git", .branch("master")),
        .package(url: "https://github.com/JohnSundell/Files.git", from: "4.2.0")
    ],
    targets: [
        .target(
            name: "CLI",
            dependencies: [
                "Core", "Files"
            ]
        ),
        .target(
            name: "Core",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                "Parser",
                "AOC"
            ],
            resources: [
                .process("Input")
            ]
        ),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"]
        ),
    ]
)
