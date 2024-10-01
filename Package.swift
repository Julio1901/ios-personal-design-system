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
            type: .dynamic,  // Habilita a compilação com suporte à evolução da biblioteca
            targets: ["PersonalDesignSystem"]
        ),
    ],
    targets: [
        .target(
            name: "PersonalDesignSystem",
            dependencies: [],
            swiftSettings: [
                .unsafeFlags(["-enable-library-evolution"]) // Habilita a evolução da biblioteca
            ]
        ),
        .testTarget(
            name: "PersonalDesignSystemTests",
            dependencies: ["PersonalDesignSystem"]
        ),
    ]
)