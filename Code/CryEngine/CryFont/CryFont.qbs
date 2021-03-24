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
        "../../SDKs/freetype/include",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryFont",
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
        name: "Header Files"
        files: [
            "CryFont.h",
            "FFont.h",
            "FontRenderer.h",
            "FontTexture.h",
            "GlyphBitmap.h",
            "GlyphCache.h",
            "NullFont.h",
            "resource.h",
            "FBitmap.h",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "CryFont.cpp",
            "FFont.cpp",
            "FFontXML.cpp",
            "FontRenderer.cpp",
            "FontTexture.cpp",
            "GlyphBitmap.cpp",
            "GlyphCache.cpp",
            "ICryFont.cpp",
            "NullFont.cpp",
        ]
    }
}
