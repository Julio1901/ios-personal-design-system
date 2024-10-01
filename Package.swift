//
//  Package.swift
//  PersonalDesignSystem
//
//  Created by Julio Cesar Pereira on 01/10/24.
//

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DesignSystem",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]
        ),
    ],
    targets: [
        .target(
            name: "DesignSystem",
            dependencies: []
        ),
        .testTarget(
            name: "DesignSystemTests",
            dependencies: ["DesignSystem"]
        ),
    ]
)
