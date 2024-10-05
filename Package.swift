// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PersonalDesignSystem",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "PersonalDesignSystem",
            type: .dynamic,
            targets: ["PersonalDesignSystem"]
        ),
    ],
    targets: [
        .target(
            name: "PersonalDesignSystem",
            dependencies: [],
            swiftSettings: [
                .unsafeFlags(["-enable-library-evolution"]) 
            ]
        ),
        .testTarget(
            name: "PersonalDesignSystemTests",
            dependencies: ["PersonalDesignSystem"]
        ),
    ]
)
