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
        "../../../Sandbox/Plugins/EditorAnimation",
        "../../../Sandbox/Plugins/EditorAnimation/..",
        "../../../Sandbox/Plugins/EditorAnimation/../../EditorQt",
        "../../../Sandbox/Plugins/EditorAnimation/../../EditorQt/Include",
        "../../../Sandbox/Plugins/EditorAnimation/../MFCToolsPlugin",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["stdafx.h",]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "CharacterTool / Feature Tests"
        prefix: "CharacterTool/"
        files: [
            "FeatureTest.h",
            "FeatureTestWeaponSwitch.cpp",
        ]
    }
    Group {
        name: "CharacterTool"
        prefix: "CharacterTool/"
        files: [
            "AnimEventPlayers.cpp",
            "CafCompressionHelper.cpp",
            "CafCompressionHelper.h",
            "CharacterDocument.cpp",
            "CharacterDocument.h",
            "CharacterGizmoManager.cpp",
            "CharacterGizmoManager.h",
            "CharacterToolForm.cpp",
            "CharacterToolForm.h",
            "CharacterToolSystem.cpp",
            "CharacterToolSystem.h",
            "CompressionMachine.h",
            "CompressionMachine.cpp",
            "EffectPlayer.h",
            "EffectPlayer.cpp",
            "JointNameSelector.h",
            "JointNameSelector.cpp",
            "ModeCharacter.cpp",
            "ModeCharacter.h",
            "ViewportMode.h",
        ]
    }
    Group {
        name: "CharacterTool / Content"
        prefix: "CharacterTool/"
        files: [
            "AnimEvent.cpp",
            "AnimEvent.h",
            "AnimEventFootstepGenerator.cpp",
            "AnimEventFootstepGenerator.h",
            "AnimationContent.cpp",
            "AnimationContent.h",
            "AnimationTagList.cpp",
            "AnimationTagList.h",
            "BlendSpace.cpp",
            "BlendSpace.h",
            "CharacterDefinition.cpp",
            "CharacterDefinition.h",
            "CharacterPhysics.cpp",
            "CharacterPhysics.h",
            "CharacterRig.cpp",
            "CharacterRig.h",
            "DisplayParameters.cpp",
            "DisplayParameters.h",
            "EditorCompressionPresetTable.cpp",
            "EditorCompressionPresetTable.h",
            "EditorDBATable.cpp",
            "EditorDBATable.h",
            "FilterAnimationList.cpp",
            "FilterAnimationList.h",
            "SceneContent.cpp",
            "SceneContent.h",
            "SkeletonContent.cpp",
            "SkeletonContent.h",
            "SkeletonParameters.cpp",
            "SkeletonParameters.h",
            "SourceAssetContent.cpp",
            "SourceAssetContent.h",
            "PlaybackLayers.h",
            "AnimationReference.h",
            "Pointers.h",
        ]
    }
    Group {
        name: "CharacterTool / Explorer Data Providers"
        prefix: "CharacterTool/"
        files: [
            "AnimationList.cpp",
            "AnimationList.h",
            "CharacterList.cpp",
            "CharacterList.h",
            "ExplorerNavigationProvider.cpp",
            "ExplorerNavigationProvider.h",
        ]
    }
    Group {
        name: "CharacterTool / Modal Tools"
        prefix: "CharacterTool/"
        files: [
            "CleanCompiledAnimationsTool.cpp",
            "CleanCompiledAnimationsTool.h",
            "ResaveAnimSettingsTool.cpp",
            "ResaveAnimSettingsTool.h",
        ]
    }
    Group {
        name: "CharacterTool / Panels"
        prefix: "CharacterTool/"
        files: [
            "AnimEventPresetPanel.cpp",
            "AnimEventPresetPanel.h",
            "BlendSpacePreview.cpp",
            "BlendSpacePreview.h",
            "DisplayParametersPanel.cpp",
            "DisplayParametersPanel.h",
            "PlaybackPanel.cpp",
            "PlaybackPanel.h",
            "PropertiesPanel.cpp",
            "PropertiesPanel.h",
            "SceneParametersPanel.h",
            "SceneParametersPanel.cpp",
            "SplitViewport.cpp",
            "SplitViewport.h",
            "TransformPanel.cpp",
            "TransformPanel.h",
        ]
    }
    Group {
        name: "Shared"
        prefix: "Shared/"
        files: [
            "AnimationFilter.cpp",
            "AnimationFilter.h",
            "AnimSettings.cpp",
            "AnimSettings.h",
            "CompressionPresetTable.cpp",
            "CompressionPresetTable.h",
            "DBATable.cpp",
            "DBATable.h",
            "SourceAssetScene.h",
            "SourceAssetSettings.h",
        ]
    }
    Group {
        name: "Cry3DEngine"
        prefix: "../../../CryEngine/Cry3DEngine/CGF/"
        files: [
            "CGFLoader.cpp",
            "CGFLoader.h",
            "ChunkFile.cpp",
            "ChunkFile.h",
            "ChunkFileReaders.cpp",
            "ChunkFileReaders.h",
            "ChunkFileWriters.cpp",
            "ChunkFileWriters.h",
            "ReadOnlyChunkFile.cpp",
            "ReadOnlyChunkFile.h",
        ]
    }
    Group {
        name: "CharacterTool / Utilities"
        prefix: "CharacterTool/"
        files: [
            "GizmoSink.cpp",
            "GizmoSink.h",
        ]
    }
    Group {
        name: "CharacterTool / Widgets"
        prefix: "CharacterTool/"
        files: [
            "BlockPalette.cpp",
            "BlockPalette.h",
            "BlockPaletteContent.h",
        ]
    }
    files: [
        "AnimationCompressionManager.cpp",
        "AnimationCompressionManager.h",
        "ResourceCompilerHelpers.cpp",
        "main.cpp",
        "Serialization.cpp",
        "Serialization.h",
    ]
}
