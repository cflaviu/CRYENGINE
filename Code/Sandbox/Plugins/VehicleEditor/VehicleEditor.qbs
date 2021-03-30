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
        "../../../Sandbox/EditorQt",
        "../../../Sandbox/EditorQt/Include",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
        "../../../Sandbox/Plugins/VehicleEditor",
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
        "PropertyCtrlExt.cpp",
        "PropertyCtrlExt.h",
        "Resource.h",
        "VehicleComp.cpp",
        "VehicleComp.h",
        "VehicleData.cpp",
        "VehicleData.h",
        "VehicleDialogComponent.cpp",
        "VehicleDialogComponent.h",
        "VehicleEditorDialog.cpp",
        "VehicleEditorDialog.h",
        "VehicleEditorPlugin.cpp",
        "VehicleEditorPlugin.h",
        "VehicleFXPanel.cpp",
        "VehicleFXPanel.h",
        "VehicleHelperObject.cpp",
        "VehicleHelperObject.h",
        "VehicleModificationDialog.h",
        "VehicleMovementPanel.cpp",
        "VehicleMovementPanel.h",
        "VehiclePaintsPanel.cpp",
        "VehiclePaintsPanel.h",
        "VehiclePart.cpp",
        "VehiclePart.h",
        "VehiclePartsPanel.cpp",
        "VehiclePartsPanel.h",
        "VehiclePrototype.cpp",
        "VehiclePrototype.h",
        "VehicleSeat.cpp",
        "VehicleSeat.h",
        "VehicleWeapon.cpp",
        "VehicleWeapon.h",
        "VehicleXMLHelper.cpp",
        "VehicleXMLHelper.h",
        "VehicleXMLLoader.cpp",
        "VehicleXMLLoader.h",
        "VehicleXMLSaver.cpp",
        "VehicleXMLSaver.h",
    ]
}
