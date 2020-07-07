// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "jumpper-demo",
    products: [
        .library(name: "jumpper-demo", targets: ["App"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0"),
        .package(url: "https://github.com/vapor/jwt.git", from: "3.0.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Leaf", "FluentSQLite", "FluentPostgreSQL","JWT", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

