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
        "../../../SDKs/FbxSdk/include",
        "../../../SDKs/Python/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtCore",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtGui",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtOpenGL",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtWidgets",
        "../../../SDKs/TangentBasisComputation",
        "../../../SDKs/boost",
        "../../../Sandbox/EditorInterface",
        "../../../Sandbox/EditorQt",
        "../../../Sandbox/EditorQt/Include",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
        "../../../Sandbox/Plugins/MeshImporter",
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
        name: "AnimationHelpers"
        prefix: "AnimationHelpers/"
        files: [
            "AnimationHelpers.cpp",
            "AnimationHelpers.h",
        ]
    }
    Group {
        name: "AutoLodSettings"
        files: [
            "AutoLodSettings.cpp",
            "AutoLodSettings.h",
        ]
    }
    Group {
        name: "ChunkFile"
        prefix: "../../../CryEngine/Cry3DEngine/CGF/"
        files: [
            "ChunkFile.cpp",
            "ChunkFileReaders.cpp",
            "ChunkFileWriters.cpp",
        ]
    }
    Group {
        name: "Code"
        files: [
            "AssetImporterFBX.cpp",
            "AssetImporterFBX.h",
            "AssetImporterImage.cpp",
            "AssetImporterImage.h",
            "AsyncHelper.cpp",
            "AsyncHelper.h",
            "AsyncTasks.cpp",
            "AsyncTasks.h",
            "CallRcTask.cpp",
            "CallRcTask.h",
            "CreateMaterialTask.cpp",
            "CreateMaterialTask.h",
            "EditorMetaData.cpp",
            "EditorMetaData.h",
            "GenerateCharacter.cpp",
            "GenerateCharacter.h",
            "ImporterUtil.cpp",
            "ImporterUtil.h",
            "MaterialHelpers.cpp",
            "MaterialHelpers.h",
            "RcCaller.cpp",
            "RcCaller.h",
            "RcLoader.cpp",
            "RcLoader.h",
            "RenderHelpers.h",
            "TargetMesh.cpp",
            "TargetMesh.h",
            "TextureHelpers.cpp",
            "TextureHelpers.h",
            "TextureManager.cpp",
            "TextureManager.h",
        ]
    }
    Group {
        name: "Dialog"
        files: [
            "DialogCAF.cpp",
            "DialogCAF.h",
            "DialogCommon.cpp",
            "DialogCommon.h",
            "DialogCommon_Import.cpp",
            "DialogMesh/DialogMesh_SceneUserData.cpp",
            "DialogMesh/DialogMesh_SceneUserData.h",
            "DisplayOptions.cpp",
            "DisplayOptions.h",
            "MainDialog.cpp",
            "MainDialog.h",
            "MaterialPanel.cpp",
            "MaterialPanel.h",
            "MeshImporterEditor.cpp",
            "MeshImporterEditor.h",
            "SceneUserData.cpp",
            "SceneUserData.h",
            "SplitViewportContainer.cpp",
            "Viewport.cpp",
            "Viewport.h",
        ]
    }
    Group {
        name: "Dialog / DialogCHR"
        prefix: "DialogCHR/"
        files: [
            "DialogCHR.cpp",
            "DialogCHR.h",
            "DialogCHR_SceneUserData.cpp",
            "DialogCHR_SceneUserData.h",
        ]
    }
    Group {
        name: "FbxTool / FbxMetaData"
        files: [
            "FbxMetaData.cpp",
            "FbxMetaData.h",
            "NodeProperties.cpp",
            "NodeProperties.h",
        ]
    }
    Group {
        name: "FbxTool / FbxTool"
        files: [
            "FbxScene.cpp",
            "FbxScene.h",
            "FbxSdkInclude.h",
            "FbxUtil.cpp",
            "FbxUtil.h",
        ]
    }
    Group {
        name: "FbxTool / Mesh"
        files: [
            "CreateEngineMesh.cpp",
        ]
    }
    Group {
        name: "MaterialGenerator"
        prefix: "MaterialGenerator/"
        files: [
            "MaterialGenerator.cpp",
            "MaterialGenerator.h",
        ]
    }
    Group {
        name: "MeshCompiler"
        prefix: "../../../CryEngine/Cry3DEngine/MeshCompiler/"
        files: [
            "ForsythFaceReorderer.cpp",
            "ForsythFaceReorderer.h",
            "MeshCompiler.cpp",
            "MeshCompiler.h",
            "TangentSpaceCalculation.cpp",
            "TangentSpaceCalculation.h",
        ]
    }
    Group {
        name: "Model"
        files: [
            "MaterialElement.cpp",
            "MaterialElement.h",
            "MaterialModel.cpp",
            "MaterialModel.h",
            "SceneModel.cpp",
            "SceneModel.h",
            "SceneModelCommon.cpp",
            "SceneModelCommon.h",
            "SceneModelSingleSelection.cpp",
            "SceneModelSingleSelection.h",
            "SceneModelSkeleton.cpp",
            "SceneModelSkeleton.h",
            "TextureModel.cpp",
            "TextureModel.h",
        ]
    }
    Group {
        name: "ModelProperties"
        prefix: "ModelProperties/"
        files: [
            "ModelProperties.cpp",
            "ModelProperties.h",
        ]
    }
    Group {
        name: "Plugin"
        files: [
            "SandboxPlugin.cpp",
            "SandboxPlugin.h",
        ]
    }
    Group {
        name: "ProxyGenerator"
        prefix: "ProxyGenerator/"
        files: [
            "PhysProxiesControlsWidget.cpp",
            "PhysProxiesControlsWidget.h",
            "PhysicsProxies.cpp",
            "PhysicsProxies.h",
            "ProxyData.cpp",
            "ProxyData.h",
            "ProxyGenerator.cpp",
            "ProxyGenerator.h",
            "WriteProxies.cpp",
            "WriteProxies.h",
        ]
    }
    Group {
        name: "QtCommon"
        files: [
            "QtCommon.cpp",
            "QtCommon.h",
        ]
    }
    Group {
        name: "RcObject"
        files: [
            "SaveRcObject.cpp",
            "SaveRcObject.h",
            "TempRcObject.cpp",
            "TempRcObject.h",
        ]
    }
    Group {
        name: "Resources"
        files: [
            "No.png",
            "PlaceholderIcon.png",
            "Resources.qrc",
            "Yes.png",
        ]
    }
    Group {
        name: "Scene"
        prefix: "Scene/"
        files: [
            "ProxySceneHelper.cpp",
            "ProxySceneHelper.h",
            "Scene.cpp",
            "Scene.h",
            "SceneElementCommon.cpp",
            "SceneElementCommon.h",
            "SceneElementPhysProxies.cpp",
            "SceneElementPhysProxies.h",
            "SceneElementProxyGeom.cpp",
            "SceneElementProxyGeom.h",
            "SceneElementSkin.cpp",
            "SceneElementSkin.h",
            "SceneElementSourceNode.cpp",
            "SceneElementSourceNode.h",
            "SceneElementTypes.h",
            "SourceSceneHelper.cpp",
            "SourceSceneHelper.h",
        ]
    }
    Group {
        name: "Serialization"
        prefix: "Serialization/"
        files: [
            "Serialization.cpp",
            "Serialization.h",
        ]
    }
    Group {
        name: "Settings"
        files: [
            "GlobalImportSettings.cpp",
            "GlobalImportSettings.h",
            "MaterialSettings.cpp",
            "MaterialSettings.h",
        ]
    }
    Group {
        name: "SkeletonPoser"
        prefix: "SkeletonPoser/"
        files: [
            "SkeletonPoser.cpp",
            "SkeletonPoser.h",
        ]
    }
    Group {
        name: "SkeletonHelpers"
        prefix: "SkeletonHelpers/"
        files: [
            "SkeletonHelpers.cpp",
            "SkeletonHelpers.h",
        ]
    }
    Group {
        name: "View"
        files: [
            "ComboBoxDelegate.cpp",
            "ComboBoxDelegate.h",
            "MaterialView.cpp",
            "MaterialView.h",
            "SceneContextMenu.cpp",
            "SceneContextMenu.h",
            "SceneView.cpp",
            "SceneView.h",
            "TextureView.cpp",
            "TextureView.h",
        ]
    }
}

