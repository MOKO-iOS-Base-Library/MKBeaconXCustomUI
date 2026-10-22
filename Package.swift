// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "MKBeaconXCustomUI",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MKBeaconXCustomUI",
            targets: ["MKBeaconXCustomUI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/MOKO-iOS-Base-Library/MKBaseModuleLibrary.git", from: "2.2.14"),
        .package(url: "https://github.com/MOKO-iOS-Base-Library/MKCustomUIModule.git", from: "2.1.14"),
    ],
    targets: [
        .target(
            name: "MKBeaconXCustomUI",
            dependencies: [
                "MKBaseModuleLibrary",
                "MKCustomUIModule",
            ],
            path: "MKBeaconXCustomUI",
            exclude: [
                "Classes/DFUPage",
            ],
            sources: ["Classes"],
            resources: [.process("Assets")],
            publicHeadersPath: "Classes",
            cSettings: [
                .headerSearchPath("Classes/Defines"),
                .headerSearchPath("Classes/DeviceInfoPage"),
                .headerSearchPath("Classes/DeviceInfoPage/Controller"),
                .headerSearchPath("Classes/DeviceInfoPage/Protocol"),
                .headerSearchPath("Classes/QuickSwitchCell"),
                .headerSearchPath("Classes/ScanUI"),
                .headerSearchPath("Classes/ScanUI/Adopter"),
                .headerSearchPath("Classes/ScanUI/ScanCell"),
                .headerSearchPath("Classes/ScanUI/ScanCell/ScanBeaconCell"),
                .headerSearchPath("Classes/ScanUI/ScanCell/ScanHTCell"),
                .headerSearchPath("Classes/ScanUI/ScanCell/ScanInfoCell"),
                .headerSearchPath("Classes/ScanUI/ScanCell/ScanThreeASensorCell"),
                .headerSearchPath("Classes/ScanUI/ScanCell/ScanTLMCell"),
                .headerSearchPath("Classes/ScanUI/ScanCell/ScanUIDCell"),
                .headerSearchPath("Classes/ScanUI/ScanCell/ScanURLCell"),
                .headerSearchPath("Classes/ScanUI/ScanFilterView"),
                .headerSearchPath("Classes/ScanUI/ScanSearchButton"),
                .headerSearchPath("Classes/SlotAdopter"),
                .headerSearchPath("Classes/SlotConfig"),
                .headerSearchPath("Classes/SlotConfig/FrameTypePickView"),
                .headerSearchPath("Classes/SlotConfig/Protocol"),
                .headerSearchPath("Classes/SlotConfig/SlotConfigCell"),
                .headerSearchPath("Classes/SlotConfig/SlotConfigCell/BeaconCell"),
                .headerSearchPath("Classes/SlotConfig/SlotConfigCell/DeviceInfoCell"),
                .headerSearchPath("Classes/SlotConfig/SlotConfigCell/UIDCell"),
                .headerSearchPath("Classes/SlotConfig/SlotConfigCell/URLCell"),
                .headerSearchPath("Classes/SlotConfig/TriggerCell"),
                .headerSearchPath("Classes/SlotConfig/TriggerView"),
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
            ]
        )
    ]
)
