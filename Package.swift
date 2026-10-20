// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationPangleAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationPangleAdapter",
            targets: ["TPNMediationPangleAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.2.1-release.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkPangleAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkPangleAdapter/8.2.1.0.2.9/AnyThinkPangleAdapter-8.2.1.0.2.9.zip",
            checksum: "9de030d23f5fce2c6df59d471ec3b681d0410c8af68bd81a7c4e938b4d1bd6ac"
        ),
        .target(
            name: "TPNMediationPangleAdapterTarget",
            dependencies: [
                "AnyThinkPangleAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ],
            path: "Sources/TPNMediationPangleAdapterTarget"
        )
    ]
)
