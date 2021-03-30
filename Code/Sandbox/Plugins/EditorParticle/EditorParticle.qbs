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
        "../../../Sandbox/Plugins/EditorParticle",
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
        files: [
            "MainEditorWindow.h",
            "MainEditorWindow.cpp",
            "ParticleAssetType.h",
            "ParticleAssetType.cpp",
            "Undo.h",
            "Undo.cpp",
            "EntityObjectWithParticleComponent.cpp",
            "EntityObjectWithParticleComponent.h",
        ]
    }
    Group {
        name: "Models"
        prefix: "Models/"
            files: [
            "ClipboardItems.h",
            "ClipboardItems.cpp",
            "EffectAssetModel.h",
            "EffectAssetModel.cpp",
            "ParticleGraphItems.h",
            "ParticleGraphItems.cpp",
            "ParticleGraphModel.h",
            "ParticleGraphModel.cpp",
            "ParticleNodeTreeModel.h",
            "ParticleNodeTreeModel.cpp",
        ]
    }
    Group {
        name: "Widgets"
        prefix: "Widgets/"
        files: [
            "AsyncNodeGraphView.h",
            "AsyncNodeGraphView.cpp",
            "ViewWidget.h",
            "ViewWidget.cpp",
            "EffectViewWidget.h",
            "EffectViewWidget.cpp",
            "EffectPanel.h",
            "EffectPanel.cpp",
        ]
    }
    Group {
        name: "Widgets / View"
        prefix: "Widgets/"
        files: [
            "FeatureGridNodeContentWidget.h",
            "FeatureGridNodeContentWidget.cpp",
            "NodeIcons.h",
            "NodeIcons.cpp",
        ]
    }
}

