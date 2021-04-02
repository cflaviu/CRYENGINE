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
        "../../../CryEngine/CryCommon",
        "../../../CryEngine/CryCommon/3rdParty",
        "../../../CryEngine/CrySchematyc/Core/Interface",
        "../../../CryEngine/CrySchematyc/STDEnv/Interface",
        "../../../CryPlugins/CryUQS/DataSource_XML",
        "../../../CryPlugins/CryUQS/DataSource_XML/datasource_xml",
        "../../../SDKs/boost",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["datasource_xml/StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "codatasource_xml"
        prefix: "datasource_xml/"
        files: [
            "QueryBlueprintFileLibrary.cpp",
            "QueryBlueprintFileLibrary.h",
            "QueryBlueprintLoader_XML.cpp",
            "QueryBlueprintLoader_XML.h",
            "QueryBlueprintSaver_XML.cpp",
            "QueryBlueprintSaver_XML.h",
            "SyntaxErrorCollector_XML.cpp",
            "SyntaxErrorCollector_XML.h",
            "XMLDatasource.cpp",
            "XMLDatasource.h",
        ]
    }
    files: [
        "DataSource_XML_Includes.h",
    ]
}
