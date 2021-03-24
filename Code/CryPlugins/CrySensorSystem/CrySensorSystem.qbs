import qbs 1.0

DynamicLibrary {
    Depends { name: 'cpp' }
    cpp.cxxLanguageVersion: "c++17"
    cpp.enableRtti: false
    cpp.discardUnusedData: true
    cpp.defines: [
        "CRY_PLATFORM_LINUX"
    ]
    cpp.includePaths: [
        ".",
    ]
    cpp.systemIncludePaths: [
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CrySchematyc/Core/Interface",
        "../CryPerceptionSystem/Module",
        "../CryPerceptionSystem/Module/../Interface",
        "../../SDKs/boost",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["Module/StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "Interface"
        prefix: "Interface/"
        files: [
            "ICrySensorSystemPlugin.h",
            "ISensorMap.h",
            "ISensorSystem.h",
            "ISensorTagLibrary.h",
            "SensorBounds.h",
        ]
        }
    Group {
        name: "Module"
        prefix: "Module/"
        files: [
            "CrySensorSystemPluginDLL.cpp",
            "CrySensorSystemPluginDLL.h",
            "OctreePlotter.h",
            "OctreePlotter.inl",
            "SchematycEntitySensorVolumeComponent.cpp",
            "SchematycEntitySensorVolumeComponent.h",
            "SensorMap.cpp",
            "SensorMap.h",
            "SensorSystem.cpp",
            "SensorSystem.h",
            "SensorTagLibrary.cpp",
            "SensorTagLibrary.h",
        ]
    }
}
