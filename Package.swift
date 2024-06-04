// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iPass2.0NativeiOS",
    defaultLocalization: "en",
    platforms: [
       .macOS(.v10_13), .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "iPass2.0NativeiOS",
            targets: ["iPass2.0NativeiOS"]),
           // .library(name: "DocumentReader", targets: ["DocumentReader.xcframework"])
    ],
    dependencies: [
//        .package(url: "https://github.com/cesarferreira/SwiftEventBus.git", from: "5.1.0"),
        .package(url: "https://github.com/aws-amplify/amplify-ui-swift-liveness", from: "1.2.11")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on. "Starscream", "SwiftEventBus",
//        .target(
//            name: "iPass2.0NativeiOS",
//           dependencies: ["DocumentReader", "DocumentReaderCore", "RegulaCommon" ,
//            .product(name: "FaceLiveness", package: "amplify-ui-swift-liveness")
//        ],
//
//            path: "Sources",
//            
//            resources: [
//                .process("Sources/iPass2.0NativeiOS/Classes/en.lproj"),
//                .process("Sources/iPass2.0NativeiOS/Classes/ca.lproj"),
//                .process("Sources/iPass2.0NativeiOS/Classes/hi.lproj"),
//                .process("Classes/iPass2.0NativeiOS/en.lproj"),
//                .process("Classes/iPass2.0NativeiOS/ca.lproj"),
//                .process("Classes/iPass2.0NativeiOS/hi.lproj"),
//                .process("Classes/iPass2.0NativeiOS/Media.xcassets"),
//            
//                .process("Classes/iPass2.0NativeiOS/Certificates.bundle"),
//                .process("Classes/iPass2.0NativeiOS/CertificatesPA.bundle"),
//                .process("Classes/iPass2.0NativeiOS/CertificatesTA.bundle"),
//                .process("Classes/iPass2.0NativeiOS/iPass.license"),
//                .process("Classes/iPass2.0NativeiOS/amplifyconfiguration.json"),
//                .process("Classes/iPass2.0NativeiOS/awsconfiguration.json"),
//                .process("Classes/iPass2.0NativeiOS/Certificates"),
//                .process("Classes/iPass2.0NativeiOS/CertificatesPA"),
//                .process("Classes/iPass2.0NativeiOS/CertificatesTA"),
//                .process("Classes/iPass2.0NativeiOS/iPass"),
//                .process("Classes/iPass2.0NativeiOS/amplifyconfiguration"),
//                .process("Classes/iPass2.0NativeiOS/awsconfiguration"),
//                .process("Classes/iPass2.0NativeiOS/ArLocalizable"),
//                .process("Classes/iPass2.0NativeiOS/ArLocalizable.strings"),
//                
//                
//              
//               //.copy("Resource/DocumentReader.xcframework")
//            ]),
        .binaryTarget(
            name: "DocumentReader",
            path: "DocumentReader.xcframework"),
        .binaryTarget(
            name: "DocumentReaderCore",
            path: "DocumentReaderCore.xcframework"),
        .binaryTarget(
            name: "RegulaCommon",
            path: "RegulaCommon.xcframework"),
        .testTarget(
                 name: "iPass2.0NativeiOSTests",
                  dependencies: ["iPass2.0NativeiOS"]),
       
    ]
    
)
   
