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
        "../../SDKs/boost",
        "../CryAction,",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryLiveCreate",
        "../CrySchematyc/Core/Interface",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "Source"
        files: [
            "../CrySystem/NullImplementation/NullLiveCreate.h",
            "LiveCreateHost.cpp",
            "LiveCreateHost.h",
            "LiveCreateManager.cpp",
            "LiveCreateManager.h",
            "LiveCreateNativeFile.cpp",
            "LiveCreateNativeFile.h",
        ]
    }
    Group {
        name: "Source / Commands"
        files: [
            "LiveCreate_Objects.cpp",
            "LiveCreate_Objects.h",
            "LiveCreate_System.cpp",
            "LiveCreate_System.h",
        ]
    }
    Group {
        name: "Source / Platforms"
        files: [
            "PlatformHandler_Any.cpp",
            "PlatformHandler_Any.h",
            "PlatformHandler_GamePC.cpp",
            "PlatformHandler_GamePC.h",
            "Platform_Common/PlatformHandlerBase.cpp",
            "Platform_Common/PlatformHandlerBase.h",
        ]
    }
    files: [
        "CryLiveCreate.cpp",
        "CryLiveCreate.h",
        "LiveCreateCommands.h",
    ]
}
