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
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/FacialEditorPlugin",
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
    Group {
        name: "FacialEditor"
        files: [
            "AnimUtils.cpp",
            "AnimUtils.h",
            "EffectorInfoWnd.cpp",
            "EffectorInfoWnd.h",
            "FBX_Import.cpp",
            "FacialEdContext.cpp",
            "FacialEdContext.h",
            "FacialEditorDialog.cpp",
            "FacialEditorDialog.h",
            "FacialEditorDialogC3DSolver.cpp",
            "FacialExpressionUtils.cpp",
            "FacialExpressionUtils.h",
            "FacialExpressionsDialog.cpp",
            "FacialExpressionsDialog.h",
            "FacialJoystickDialog.cpp",
            "FacialJoystickDialog.h",
            "FacialPreviewDialog.cpp",
            "FacialPreviewDialog.h",
            "FacialPreviewOptionsDialog.cpp",
            "FacialPreviewOptionsDialog.h",
            "FacialSequenceDialog.cpp",
            "FacialSequenceDialog.h",
            "FacialSlidersCtrl.cpp",
            "FacialSlidersCtrl.h",
            "FacialSlidersDialog.cpp",
            "FacialSlidersDialog.h",
            "FacialVideoFrameDialog.cpp",
            "FacialVideoFrameDialog.h",
            "JoystickPropertiesDlg.cpp",
            "JoystickPropertiesDlg.h",
            "JoystickUtils.cpp",
            "JoystickUtils.h",
            "MultiLineStringDlg.cpp",
            "MultiLineStringDlg.h",
            "OverwriteConfirmDialog.cpp",
            "OverwriteConfirmDialog.h",
            "PhonemeAnalyzer.cpp",
            "PhonemeAnalyzer.h",
            "PhonemesCtrl.cpp",
            "PhonemesCtrl.h",
            "SelectAnimationDialog.cpp",
            "SelectAnimationDialog.h",
        ]
    }
    Group {
        name: "FacialEditor / Controls"
        prefix: "Controls/"
        files: [
            "JoystickCtrl.cpp",
            "JoystickCtrl.h",
            "ScrollableWindow.cpp",
            "ScrollableWindow.h",
            "TreeCtrlUtils.h",
        ]
    }
    Group {
        name: "FacialEditor / Audio"
        prefix: "Audio/"
        files: [
            "WaveFile.cpp",
            "WaveFile.h",
            "WaveFileReader.cpp",
            "WaveFileReader.h",
            "WaveGraphCtrl.cpp",
            "WaveGraphCtrl.h",
        ]
    }
    Group {
        name: "FacialEditor / Vicon"
        prefix: "Vicon/"
        files: [
            "Vicon_Client.cpp",
            "Vicon_ClientCodes.cpp",
            "Vicon_ClientCodes.h",
        ]
    }
}

