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
        "../../../SDKs/boost",
        "../../../Sandbox/EditorInterface",
        "../../../Sandbox/EditorQt/.",
        "../../../Sandbox/EditorQt/Include",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/EditorEnvironment",
        "../../../Sandbox/Plugins/EditorEnvironment/../../EditorQt",
        "../../../Sandbox/Plugins/EditorEnvironment/../../EditorQt/Include",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["stdafx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "Plugin"
        files: [
            "EditorEnvironment.qrc",
            "main.cpp",
        ]
    }
    Group {
        name: "UI"
        prefix: "UI/"
        files: [
            "ConstantsWidget.cpp",
            "ConstantsWidget.h",
            "CurveEditorWidget.cpp",
            "CurveEditorWidget.h",
            "PlayerWidget.cpp",
            "PlayerWidget.h",
            "VariablesWidget.cpp",
            "VariablesWidget.h",
        ]
    }
    files: [
        "Controller.cpp",
        "Controller.h",
        "EnvironmentAssetType.cpp",
        "EnvironmentAssetType.h",
        "EnvironmentEditor.cpp",
        "EnvironmentEditor.h",
        "Utils.cpp",
        "Utils.h",
    ]
}

