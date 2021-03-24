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
        "../CryUDR",
        "../../SDKs/boost",
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
    files: [
        "CVars.cpp",
        "CVars.h",
        "CryUDR.cpp",
        "LogMessageCollection.cpp",
        "LogMessageCollection.h",
        "Node.cpp",
        "Node.h",
        "NodeStack.cpp",
        "NodeStack.h",
        "RecursiveSyncObject.cpp",
        "RecursiveSyncObject.h",
        "RenderPrimitiveCollection.cpp",
        "RenderPrimitiveCollection.h",
        "RenderPrimitives.cpp",
        "RenderPrimitives.h",
        "TimeMetadata.cpp",
        "TimeMetadata.h",
        "Tree.cpp",
        "Tree.h",
        "TreeManager.cpp",
        "TreeManager.h",
        "UDRSystem.cpp",
        "UDRSystem.h",
    ]
}
