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
        "../../../Sandbox/EditorQt",
        "../../../Sandbox/EditorQt/Include",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/EditorTrackView",
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
         name: "Animators"
         prefix: "Animators/"
         files: [
             "CommentNodeAnimator.cpp",
             "CommentNodeAnimator.h",
             "DirectorNodeAnimator.cpp",
             "DirectorNodeAnimator.h",
             "LayerNodeAnimator.cpp",
             "LayerNodeAnimator.h",
         ]
     }
     Group {
         name: "Exporter"
         files: [
             "Exporter/FBXExporterDlg.cpp",
             "Exporter/FBXExporterDlg.h",
             "Exporter/FBXImporterDlg.cpp",
             "Exporter/FBXImporterDlg.h",
             "Exporter/XMLExporterDlg.cpp",
             "Exporter/XMLExporterDlg.h",
             "TrackViewExporter.cpp",
             "TrackViewExporter.h",
         ]
     }
     Group {
         name: "Nodes"
         prefix: "Nodes/"
         files: [
             "TrackViewAnimNode.cpp",
             "TrackViewAnimNode.h",
             "TrackViewAnimationTrack.cpp",
             "TrackViewAnimationTrack.h",
             "TrackViewCameraNode.cpp",
             "TrackViewCameraNode.h",
             "TrackViewEntityNode.cpp",
             "TrackViewEntityNode.h",
             "TrackViewGeomCacheAnimationTrack.cpp",
             "TrackViewGeomCacheAnimationTrack.h",
             "TrackViewNode.cpp",
             "TrackViewNode.h",
             "TrackViewNodeFactories.cpp",
             "TrackViewNodeFactories.h",
             "TrackViewSequence.cpp",
             "TrackViewSequence.h",
             "TrackViewSequenceTrack.cpp",
             "TrackViewSequenceTrack.h",
             "TrackViewSplineTrack.cpp",
             "TrackViewSplineTrack.h",
             "TrackViewTrack.cpp",
             "TrackViewTrack.h",
         ]
     }
     Group {
         name: "Objects"
         prefix: "Objects/"
         files: [
             "SequenceObject.cpp",
             "SequenceObject.h",
             "TrackGizmo.cpp",
             "TrackGizmo.h",
         ]
     }
     Group {
         name: "UI"
         files: [
             "TrackViewBatchRenderDlg.cpp",
             "TrackViewBatchRenderDlg.h",
             "TrackViewEventsDialog.cpp",
             "TrackViewEventsDialog.h",
             "TrackViewSequenceDialog.cpp",
             "TrackViewSequenceDialog.h",
             "TrackViewWindow.cpp",
             "TrackViewWindow.h",
         ]
     }
     Group {
         name: "UI / Controls"
         prefix: "Controls/"
         files: [
             "KeysToolbar.cpp",
             "KeysToolbar.h",
             "PlaybackControlsToolbar.cpp",
             "PlaybackControlsToolbar.h",
             "PropertyTreeDockWidget.cpp",
             "PropertyTreeDockWidget.h",
             "SequenceTabWidget.cpp",
             "SequenceTabWidget.h",
             "SequenceToolbar.cpp",
             "SequenceToolbar.h",
             "TrackViewCoreComponent.cpp",
             "TrackViewCoreComponent.h",
         ]
     }
     files: [
         "AnimationContext.cpp",
         "AnimationContext.h",
         "TrackViewComponentsManager.cpp",
         "TrackViewComponentsManager.h",
         "TrackViewCore.cpp",
         "TrackViewCore.h",
         "TrackViewIcons.h",
         "TrackViewPlugin.cpp",
         "TrackViewPlugin.h",
         "TrackViewPythonFuncs.cpp",
         "TrackViewSequenceManager.cpp",
         "TrackViewSequenceManager.h",
         "TrackViewUndo.cpp",
         "TrackViewUndo.h",
     ]
 }

