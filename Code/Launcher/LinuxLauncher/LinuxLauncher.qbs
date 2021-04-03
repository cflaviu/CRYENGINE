import qbs 1.0

CppApplication {
    Depends { name: 'cpp' }
    cpp.cxxLanguageVersion: "c++17"
    cpp.enableRtti: false
    cpp.discardUnusedData: true
    cpp.defines: [
        "CRY_PLATFORM_64BIT",
        "DEDICATED_SERVER",
    ]

    Properties {
        condition: qbs.toolchain.contains("clang")
        cpp.defines: outer.concat("CRY_COMPILER_CLANG")
    }
    Properties {
        condition: qbs.toolchain.contains("gcc")
        cpp.defines: outer.concat("CRY_COMPILER_GCC")
    }
    Properties {
        condition: qbs.toolchain.contains("gcc")
        cpp.defines: outer.concat("CRY_COMPILER_MSVC")
    }

    Properties {
        condition: qbs.targetPlatform.contains("android")
        cpp.defines: outer.concat("CRY_PLATFORM_ANDROID")
    }
    Properties {
        condition: qbs.targetPlatform.contains("linux")
        cpp.defines: outer.concat("CRY_PLATFORM_LINUX")
    }
    Properties {
        condition: qbs.targetPlatform.contains("macos")
        cpp.defines: outer.concat("CRY_PLATFORM_MAC")
    }
    Properties {
        condition: qbs.targetPlatform.contains("windows")
        cpp.defines: outer.concat("CRY_PLATFORM_WINDOWS")
    }

    cpp.includePaths: [
        ".",
    ]
    cpp.systemIncludePaths: [
        "../../CryEngine/CryCommon",
        "../../CryEngine/CryCommon/3rdParty",
        "../../CryEngine/CrySchematyc/Core/Interface",
        "../../SDKs/boost",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    cpp.staticLibraries: [
        "pthread",
    ]
    Group {
        name: "PCH"
        files: ["StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "Resource Files"
    //    files: ["resource.h"]
    }
    Group {
        name: "Source Files"
        files: ["Main.cpp"]
    }
}
