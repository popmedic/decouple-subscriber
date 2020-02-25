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
    targets: [
        .target(
            name: "Subscriber",
            dependencies: [
                .package(
                    url: "https://github.com/popmedic/decouple-protocols.git",
                    .exact("0.0.1")
                )
            ],
            path: "Sources"),
    ]
)
