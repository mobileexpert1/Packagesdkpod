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
        .target(
           name: "iPass2.0NativeiOS",
           dependencies: ["DocumentReader", "DocumentReaderCore", "RegulaCommon" ,
            .product(name: "FaceLiveness", package: "amplify-ui-swift-liveness")
        ],

            path: "Sources",
            
            resources: [
                .copy("Sources/iPass2.0NativeiOS/Classes/en.lproj"),
                .copy("Sources/iPass2.0NativeiOS/Classes/ca.lproj"),
                .copy("Sources/iPass2.0NativeiOS/Classes/hi.lproj"),
                .copy("Classes/iPass2.0NativeiOS/en.lproj"),
                .copy("Classes/iPass2.0NativeiOS/ca.lproj"),
                .copy("Classes/iPass2.0NativeiOS/hi.lproj"),
                .copy("Classes/iPass2.0NativeiOS/Media.xcassets"),
            
                .copy("Classes/iPass2.0NativeiOS/Certificates.bundle"),
                .copy("Classes/iPass2.0NativeiOS/CertificatesPA.bundle"),
                .copy("Classes/iPass2.0NativeiOS/CertificatesTA.bundle"),
                .copy("Classes/iPass2.0NativeiOS/iPass.license"),
                .copy("Classes/iPass2.0NativeiOS/amplifyconfiguration.json"),
                .copy("Classes/iPass2.0NativeiOS/awsconfiguration.json"),
                .copy("Classes/iPass2.0NativeiOS/Certificates"),
                .copy("Classes/iPass2.0NativeiOS/CertificatesPA"),
                .copy("Classes/iPass2.0NativeiOS/CertificatesTA"),
                .copy("Classes/iPass2.0NativeiOS/iPass"),
                .copy("Classes/iPass2.0NativeiOS/amplifyconfiguration"),
                .copy("Classes/iPass2.0NativeiOS/awsconfiguration"),
                .copy("Classes/iPass2.0NativeiOS/ArLocalizable"),
                .copy("Classes/iPass2.0NativeiOS/ArLocalizable.strings"),
                
                
              
               //.copy("Resource/DocumentReader.xcframework")
            ]),
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
   
