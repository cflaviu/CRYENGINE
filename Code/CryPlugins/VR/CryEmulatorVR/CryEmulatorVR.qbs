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
        "../..SDKs/boost",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CrySchematyc/Core/Interface",
        "../VR/CryEmulatorVR/Module",
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
    files: [
        "Module/HMDDeviceEmulator.cpp",
        "Module/HMDDeviceEmulator.h",
        "Module/PluginDll.cpp",
        "Module/PluginDll.h",
    ]
}
