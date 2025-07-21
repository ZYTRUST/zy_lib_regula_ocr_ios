// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "zy_lib_regula_ocr_ios",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "zy_lib_regula_ocr_ios",
            targets: ["zy_lib_regula_ocr_ios_bin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/regulaforensics/DocumentReader-Swift-Package.git", from: "8.1.0"),
        .package(url: "https://github.com/regulaforensics/DocumentReaderFullAuth-Swift-Package.git", from: "8.1.0")
    ],
    targets: [
        .target(
            name: "zy_lib_idemia_face_ios_target",
            dependencies: [
                .product(name: "DocumentReader", package: "DocumentReader-Swift-Package"),
                .product(name: "DocumentReaderFullAuth", package: "DocumentReaderFullAuth-Swift-Package")
            ],
            path: "Sources/zy_lib_regula_ocr_ios_target"
        ),
        .binaryTarget(
            name: "zy_lib_regula_ocr_ios_bin",
            path: "Sources/zy_lib_regula_ocr_ios.xcframework"
        )
    ]
)
