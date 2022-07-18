// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "BuildToolExample",
    targets: [
        .executableTarget(
            name: "BuildToolExample",
            plugins: [
                "MyPlugin",
            ]
        ),
        .plugin(
            name: "MyPlugin",
            capability: .buildTool(),
            dependencies: [
                "MyBinary",
            ]
        ),
        .binaryTarget(
            name: "MyBinary",
            path: "Binaries/MyBinary.artifactbundle"
        ),
    ]
)
