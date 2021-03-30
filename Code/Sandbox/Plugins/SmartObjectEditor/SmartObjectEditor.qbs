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
        "../../../SDKs/Python/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtCore",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtGui",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtOpenGL",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtWidgets",
        "../../../SDKs/XT_13_4/Include",
        "../../../SDKs/boost",
        "../../../Sandbox/EditorInterface",
        "../../../Sandbox/EditorQt",
        "../../../Sandbox/EditorQt/Include",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
        "../../../Sandbox/Plugins/SmartObjectEditor",
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
        "ItemDescriptionDlg.cpp",
        "ItemDescriptionDlg.h",
        "Resource.h",
        "SmartObject.cpp",
        "SmartObject.h",
        "SmartObjectActionDialog.cpp",
        "SmartObjectActionDialog.h",
        "SmartObjectClassDialog.cpp",
        "SmartObjectClassDialog.h",
        "SmartObjectEditor.rc",
        "SmartObjectEditorPlugin.cpp",
        "SmartObjectEditorPlugin.h",
        "SmartObjectEventDialog.cpp",
        "SmartObjectEventDialog.h",
        "SmartObjectHelperDialog.cpp",
        "SmartObjectHelperDialog.h",
        "SmartObjectHelperObject.cpp",
        "SmartObjectHelperObject.h",
        "SmartObjectPatternDialog.cpp",
        "SmartObjectPatternDialog.h",
        "SmartObjectStateDialog.cpp",
        "SmartObjectStateDialog.h",
        "SmartObjectTemplateDialog.cpp",
        "SmartObjectTemplateDialog.h",
        "SmartObjectsEditorDialog.cpp",
        "SmartObjectsEditorDialog.h",
    ]
}
