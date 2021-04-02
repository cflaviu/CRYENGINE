import qbs 1.0

DynamicLibrary {
    Depends { name: 'cpp' }
    cpp.cxxLanguageVersion: "c++17"
    cpp.enableRtti: false
    cpp.discardUnusedData: true
    cpp.defines: [
        "CRY_PLATFORM_LINUX",
        "NOT_USE_CRY_MEMORY_MANAGER",
        "UQS_SCHEMATYC_SUPPORT",
    ]
    cpp.includePaths: [
        ".",
    ]
    cpp.systemIncludePaths: [
        "../../../CryEngine/CryCommon",
        "../../../CryEngine/CryCommon/3rdParty",
        "../../../CryEngine/CrySchematyc/Core/Interface",
        "../../../CryEngine/CrySchematyc/STDEnv/Interface",
        "../../../CryPlugins",
        "../../../CryPlugins/CryUQS/StdLib",
        "../../../CryPlugins/CryUQS/StdLib/stdlib",
        "../../../SDKs/boost",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["stdlib/StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "shared"
        prefix: "stdlib/"
        files: [
            "DeferredEvaluators.cpp",
            "DeferredEvaluators.h",
            "Functions.cpp",
            "Functions.h",
            "Generators.cpp",
            "Generators.h",
            "InstantEvaluators.cpp",
            "InstantEvaluators.h",
            "ItemDebugProxies.cpp",
            "ItemDebugProxies.h",
            "ItemDebugRendering.cpp",
            "ItemDebugRendering.h",
            "ItemMonitors.cpp",
            "ItemMonitors.h",
            "Items.cpp",
        ]
    }
    files: [
        "StdLibRegistration.cpp",
        "StdLibRegistration.h",
    ]
}
