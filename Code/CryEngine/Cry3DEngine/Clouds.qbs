import qbs 1.0

DynamicLibrary {
    Group {
        name: "3DEngine"
        files: [
            "BreezeGenerator.cpp",
            "3dEngine.cpp",
            "3DEngineLight.cpp",
            "3dEngineLoad.cpp",
            "3dEngineLoad.h",
            "3DEngineRender.cpp",
            "PhysCallbacks.cpp",
            "BreezeGenerator.h",
            "3dEngine.h",
            "PhysCallbacks.h",
            "VisibleRenderNodeManager.h",
            "VisibleRenderNodeManager.cpp",
            "LightVolumeManager.h",
            "LightVolumeManager.cpp",
        ]
    }
    Group {
        name: "Brush"
        files: [
            "Brush.cpp",
            "Brush.h",
        ]
    }
    Group {
        name: "CBuffer"
        files: [
            "CCullRenderer.cpp",
            "CCullRenderer.h",
            "CCullThread.cpp",
            "CCullThread.h",
            "PolygonClipContext.cpp",
            "PolygonClipContext.h",
            "VMath.hpp",
            "VMath_C.hpp",
            "VMath_Prototypes.hpp",
            "VMath_SSE.hpp",
        ]
    }
    Group {
        name: "CGF"
        files: [
            "CGF/CGFLoader.cpp",
            "CGF/CGFSaver.cpp",
            "CGF/ChunkFile.cpp",
            "CGF/ReadOnlyChunkFile.cpp",
            "CGF/CGFLoader.h",
            "CGF/CGFSaver.h",
            "CGF/ChunkFile.h",
            "CGF/ChunkData.h",
            "CGF/ReadOnlyChunkFile.h",
            "CGF/ChunkFileReaders.h",
            "CGF/ChunkFileReaders.cpp",
            "CGF/ChunkFileWriters.h",
            "CGF/ChunkFileWriters.cpp",
            "CGF/VClothSaver.h",
            "CGF/VClothSaver.cpp",
        ]
    }
    Group {
        name: "CVars"
        files: [
            "cvars.cpp",
            "cvars.h",
        ]
    }
    Group {
        name: "Effects"
        references: [

        ]
    }
}
