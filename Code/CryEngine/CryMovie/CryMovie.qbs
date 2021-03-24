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
        "../../SDKs/boost",
        "../CryAction",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryMovie",
        "../CrySchematyc/Core/Interface",
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
        name: "Source Files"
        files: [
            "AnimSequence.cpp",
            "AnimSequence.h",
            "CryMovie.cpp",
            "Movie.cpp",
            "Movie.h",
        ]
    }
    Group {
        name: "Tracks"
        files: [
            "AnimSplineTrack.cpp",
            "BoolTrack.cpp",
            "CharacterTrack.cpp",
            "CompoundSplineTrack.cpp",
            "GotoTrack.cpp",
            "LookAtTrack.cpp",
            "TimeRangesTrack.cpp",
            "TimeRangesTrack.h",
        ]
    }
    Group {
        name: "Nodes"
        files: [
            "AnimCameraNode.cpp",
            "AnimCameraNode.h",
            "AnimEnvironmentNode.cpp",
            "AnimEnvironmentNode.h",
            "AnimGeomCacheNode.cpp",
            "AnimGeomCacheNode.h",
            "AnimLightNode.cpp",
            "AnimLightNode.h",
            "AnimNode.cpp",
            "AnimNode.h",
            "AnimPostFXNode.cpp",
            "AnimPostFXNode.h",
            "AnimScreenFaderNode.cpp",
            "AnimScreenFaderNode.h",
            "AudioNode.cpp",
            "AudioNode.h",
            "CVarNode.cpp",
            "CVarNode.h",
            "CommentNode.cpp",
            "CommentNode.h",
            "CryMovie.h",
            "EntityNode.cpp",
            "EntityNode.h",
            "EventNode.cpp",
            "EventNode.h",
            "LayerNode.cpp",
            "LayerNode.h",
            "MaterialNode.cpp",
            "MaterialNode.h",
            "SceneNode.cpp",
            "SceneNode.h",
            "ScriptVarNode.cpp",
            "ScriptVarNode.h",
            "ShadowsSetupNode.cpp",
            "ShadowsSetupNode.h",
        ]
    }
    Group {
        name: "Tracks"
        files: [
            "AnimSplineTrack.h",
            "AnimTrack.h",
            "BoolTrack.h",
            "CharacterTrack.h",
            "CompoundSplineTrack.h",
            "GotoTrack.h",
            "LookAtTrack.h",
            "ScreenFaderTrack.cpp",
            "ScreenFaderTrack.h",
            "Tracks.h",
        ]
    }
    files: [
        "resource.h",
    ]
}
