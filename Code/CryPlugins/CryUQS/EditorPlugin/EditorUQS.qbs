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
        "../../../CryPlugins/CryUQS/DataSource_XML/../..",
        "../../../CryPlugins/CryUQS/EditorPlugin",
        "../../../CryPlugins/CryUQS/EditorPlugin/../..",
        "../../../CryPlugins/CryUQS/EditorPlugin/GeneratedFiles",
        "../../../SDKs/Python/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtCore",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtGui",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtOpenGL",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtWidgets",
        "../../../SDKs/boost",
        "../../../Sandbox/EditorInterface",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
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
        name: "Editor"
        prefix: "Editor/"
        files: [
            "Blueprints.cpp",
            "Blueprints.h",
            "CentralEventManager.cpp",
            "CentralEventManager.h",
            "DocSerializationContext.cpp",
            "DocSerializationContext.h",
            "Document.cpp",
            "Document.h",
            "EditorContext.cpp",
            "EditorContext.h",
            "ItemTypeName.cpp",
            "ItemTypeName.h",
            "MainEditorWindow.cpp",
            "MainEditorWindow.h",
            "QueryListProvider.cpp",
            "QueryListProvider.h",
            "QuerySimulator.cpp",
            "QuerySimulator.h",
            "SerializationHelpers.cpp",
            "SerializationHelpers.h",
            "Settings.cpp",
            "Settings.h",
        ]
    }
    files: [
        "DLLMain.cpp",
    ]
}
