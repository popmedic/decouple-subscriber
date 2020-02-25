// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Subscriber",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "Subscriber",
            targets: ["Subscriber"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/popmedic/decouple-protocols.git", "0.0.3"..."0.0.3"
        ),
    ],
    targets: [
        .target(
            name: "Subscriber",
            dependencies: ["Protocols"],
            path: "Sources"),
    ]
)
