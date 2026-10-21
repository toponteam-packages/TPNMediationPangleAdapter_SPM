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
            checksum: "1783908f6d7c2da3810fba01e6861913f0a8c288f4fe1d75a4f92e740a1f1467"
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
