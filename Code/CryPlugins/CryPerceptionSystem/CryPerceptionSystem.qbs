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
        "..\..\SDKs\boost",
        "..\..\SDKs\curl\include",
        "..\CryCommon",
        "..\CryCommon\3rdParty",
        "..\CryHTTP\Module",
        "..\CryHTTP\Module\..\Interface",
        "..\CrySchematyc\Core\Interface",
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
            "IPerceptionManager.h",
            "ICryPerceptionSystemPlugin.h",
        ]
    }
    Group {
        name: "Module"
        prefix: "Module/"
        files: [
            "CryPerceptionSystemPluginDLL.cpp",
            "PerceptionActor.cpp",
            "PerceptionActor.h",
            "PerceptionFlowNodes.cpp",
            "PerceptionFlowNodes.h",
            "PerceptionManager.cpp",
            "PerceptionManager.h",
            "ScriptBind_PerceptionManager.cpp",
            "ScriptBind_PerceptionManager.h",
        ]
    }
}
