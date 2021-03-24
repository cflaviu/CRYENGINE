import qbs 1.0

CppApplication {
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
        "../../CryEngine\CryCommon",
        "../../CryEngine\CryCommon\3rdParty",
        "../../CryEngine\CrySchematyc\Core\Interface",
        "../../SDKs\boost",
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
        name: "Resource Files"
        files: ["resource.h"]
    }
    Group {
        name: "Source Files"
        files: ["Main.cpp"]
    }
}
