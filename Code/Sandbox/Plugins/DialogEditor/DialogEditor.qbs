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
        "../../../CryEngine/CryAction",
        "../../../CryEngine/CryCommon",
        "../../../CryEngine/CryCommon/3rdParty",
        "../../../CryEngine/CrySchematyc/Core/Interface",
        "../../../SDKs/Python/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtCore",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtGui",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtOpenGL",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtWidgets",
        "../../../SDKs/XT_13_4/Include",
        "../../../SDKs/boost",
        "../../../Sandbox/EditorInterface",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/DialogEditor",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
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
        "DialogEditor.rc",
        "DialogEditorDialog.cpp",
        "DialogEditorDialog.h",
        "DialogEditorPlugin.cpp",
        "DialogEditorPlugin.h",
        "DialogManager.cpp",
        "DialogManager.h",
        "DialogScriptRecord.cpp",
        "DialogScriptRecord.h",
        "DialogScriptView.cpp",
        "DialogScriptView.h",
        "Resource.h",
    ]
}

