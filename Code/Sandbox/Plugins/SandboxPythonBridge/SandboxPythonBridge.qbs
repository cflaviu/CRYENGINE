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
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/PySide/PySide2/include/PySide2",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/PySide/PySide2/include/PySide2/QtCore",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/PySide/PySide2/include/PySide2/QtGui",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/PySide/PySide2/include/PySide2/QtWidgets",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/PySide/PySide2/include/shiboken2",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtANGLE",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtCore",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtGui",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtOpenGL",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtWidgets",
        "../../../SDKs/boost",
        "../../../Sandbox/EditorInterface",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/SandboxPythonBridge",
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
        "SandboxPythonBridge.cpp",
        "SandboxPythonBridgeCommands.cpp",
        "SandboxPythonBridgePlugin.cpp",
        "SandboxPythonBridgePlugin.h",
    ]
}

