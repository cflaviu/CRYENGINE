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
        "../../../Libs/tiff/include_win",
        "../../../SDKs/Python/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtCore",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtGui",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtOpenGL",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtWidgets",
        "../../../SDKs/XT_13_4/Include",
        "../../../SDKs/boost",
        "../../../SDKs/squish-ccr",
        "../../../SDKs/tiff-4.0.4/libtiff",
        "../../../Sandbox/EditorInterface",
        "../../../Sandbox/Libs/CryQt",
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
    Group {
        name: "Controls"
        prefix: "Controls/"
        files: [
            "BitmapToolTip.cpp",
            "BitmapToolTip.h",
            "ColorButton.cpp",
            "ColorButton.h",
            "ColorCheckBox.cpp",
            "ColorCheckBox.h",
            "ColorCtrl.h",
            "ColorGradientCtrl.cpp",
            "ColorGradientCtrl.h",
            "DLGBARS.CPP",
            "DLGBARS.H",
            "FillSliderCtrl.cpp",
            "FillSliderCtrl.h",
            "HotTrackingTreeCtrl.cpp",
            "HotTrackingTreeCtrl.h",
            "ImageHistogramCtrl.cpp",
            "ImageHistogramCtrl.h",
            "ImageListCtrl.cpp",
            "ImageListCtrl.h",
            "InPlaceButton.cpp",
            "InPlaceButton.h",
            "InPlaceComboBox.cpp",
            "InPlaceComboBox.h",
            "InPlaceEdit.cpp",
            "InPlaceEdit.h",
            "ListCtrlEx.cpp",
            "ListCtrlEx.h",
            "MFCPropertyTree.cpp",
            "MFCPropertyTree.h",
            "MemDC.h",
            "NumberCtrl.cpp",
            "NumberCtrl.h",
            "NumberCtrlEdit.cpp",
            "NumberCtrlEdit.h",
            "PreviewModelCtrl.cpp",
            "PreviewModelCtrl.h",
            "PropertiesPanel.cpp",
            "PropertiesPanel.h",
            "PropertyCtrl.cpp",
            "PropertyCtrl.h",
            "PropertyCtrlEx.cpp",
            "PropertyCtrlEx.h",
            "PropertyItem.cpp",
            "PropertyItem.h",
            "RollupCtrl.cpp",
            "RollupCtrl.h",
            "SharedFonts.cpp",
            "SharedFonts.h",
            "SliderCtrlEx.cpp",
            "SliderCtrlEx.h",
            "SplineCtrl.cpp",
            "SplineCtrl.h",
            "SplineCtrlEx.cpp",
            "SplineCtrlEx.h",
            "SplitterCtrl.cpp",
            "SplitterCtrl.h",
            "TimelineCtrl.cpp",
            "TimelineCtrl.h",
            "TreeCtrlEx.cpp",
            "TreeCtrlEx.h",
            "TreeCtrlReport.cpp",
            "TreeCtrlReport.h",
            "WndGridHelper.h",
        ]
    }
    Group {
        name: "Dialogs"
        prefix: "Dialogs/"
        files: [
            "BaseFrameWnd.cpp",
            "BaseFrameWnd.h",
            "CheckOutDialog.cpp",
            "CheckOutDialog.h",
            "CustomColorDialog.cpp",
            "CustomColorDialog.h",
            "GenericOverwriteDialog.cpp",
            "GenericOverwriteDialog.h",
            "GenericSelectItemDialog.cpp",
            "GenericSelectItemDialog.h",
            "SelectMissionObjectiveDialog.cpp",
            "SelectMissionObjectiveDialog.h",
            "SelectSequenceDialog.cpp",
            "SelectSequenceDialog.h",
            "SourceControlAddDlg.cpp",
            "SourceControlAddDlg.h",
            "SourceControlDescDlg.cpp",
            "SourceControlDescDlg.h",
            "StringInputDialog.cpp",
            "StringInputDialog.h",
            "ToolbarDialog.cpp",
            "ToolbarDialog.h",
            "UserOptions.cpp",
            "UserOptions.h",
        ]
    }
    Group {
        name: "Util"
        prefix: "Util/"
        files: [
            "Clipboard.cpp",
            "Clipboard.h",
            "FileUtil.cpp",
            "FileUtil.h",
            "GdiUtil.cpp",
            "GdiUtil.h",
            "GridUtils.h",
            "ImageGif.cpp",
            "ImageGif.h",
            "ImageHDR.cpp",
            "ImageHDR.h",
            "ImageTIF.cpp",
            "ImageTIF.h",
            "ImageUtil.cpp",
            "ImageUtil.h",
            "Image_DXTC.cpp",
            "Image_DXTC.h",
            "IndexedFiles.cpp",
            "IndexedFiles.h",
            "MFCUtil.cpp",
            "MFCUtil.h",
            "QParentWndWidget.cpp",
            "QParentWndWidget.h",
            "UIEnumerations.cpp",
            "UIEnumerations.h",
        ]
    }
    Group {
        name: "QMfcApp"
        prefix: "QMfcApp/"
        files: [
            "qmfcapp.cpp",
            "qmfcapp.h",
            "qmfchost.h",
            "qmfcviewporthost.cpp",
            "qmfcviewporthost.h",
            "qwinhost.cpp",
            "qwinhost.h",
            "qwinwidget.cpp",
            "qwinwidget.h",
        ]
    }
    files: [
        "MFCToolsPlugin.cpp",
        "MFCToolsPlugin.h",
        "MFCToolsDefines.h",
        "Resource.h",
        "UserMessageDefines.h",
    ]
}
