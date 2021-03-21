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
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CrySchematyc/Core/Interface",
        "../../SDKs/TangentBasisComputation",
        "../../SDKs/boost",
        "../../SDKs/lz4/lib",
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
        prefix: "CGF/"
        files: [
            "CGFLoader.cpp",
            "CGFSaver.cpp",
            "ChunkFile.cpp",
            "ReadOnlyChunkFile.cpp",
            "CGFLoader.h",
            "CGFSaver.h",
            "ChunkFile.h",
            "ChunkData.h",
            "ReadOnlyChunkFile.h",
            "ChunkFileReaders.h",
            "ChunkFileReaders.cpp",
            "ChunkFileWriters.h",
            "ChunkFileWriters.cpp",
            "VClothSaver.h",
            "VClothSaver.cpp",
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
        name: "Effects / Clouds"
        files: [
            "CloudBlockerRenderNode.cpp",
            "DistanceCloudRenderNode.cpp",
            "CloudBlockerRenderNode.h",
            "DistanceCloudRenderNode.h",
        ]
    }
    Group {
        name: "Effects / Decals"
        files: [
            "Decal.cpp",
            "DecalManager.cpp",
            "DecalRenderNode.cpp",
            "DecalManager.h",
            "DecalRenderNode.h",
        ]
    }
    Group {
        name: "Effects / FogVolumes"
        files: [
            "FogVolumeRenderNode.cpp",
            "FogVolumeRenderNode.h",
        ]
    }
    Group {
        name: "Effects / Optics"
        files: [
            "OpticsManager.cpp",
            "OpticsManager.h",
        ]
    }
    Group {
        name: "Effects / Particles"
        files: [
            "Particle.cpp",
            "ParticleEffect.cpp",
            "ParticleEmitter.cpp",
            "ParticleEnviron.cpp",
            "ParticleContainer.cpp",
            "ParticleSubEmitter.cpp",
            "Particle.h",
            "ParticleContainer.h",
            "ParticleEffect.h",
            "ParticleEmitter.h",
            "ParticleEnviron.h",
            "ParticleList.h",
            "ParticleMemory.h",
            "ParticleSubEmitter.h",
            "ParticleUtils.h",
            "ParticleManager.h",
            "ParticleManager.cpp",
            "ParticleRender.cpp",
        ]
    }
    Group {
        name: "Effects / SkyLight"
        files: [
            "SkyLightManager.cpp",
            "SkyLightNishita.cpp",
            "SkyLightManager.h",
            "SkyLightNishita.h",
            "SkyLightNishita_info.h",
        ]
    }
    Group {
        name: "Environment"
        files: [
            "EnvironmentPreset.cpp",
            "EnvironmentPreset.h",
            "TimeOfDay.cpp",
            "TimeOfDay.h",
            "TimeOfDayConstants.cpp",
            "TimeOfDayConstants.h",
        ]
    }
    Group {
        name: "GeomCache"
        files: [
            "GeomCache.cpp",
            "GeomCache.h",
            "GeomCacheRenderNode.cpp",
            "GeomCacheRenderNode.h",
            "GeomCacheManager.cpp",
            "GeomCacheManager.h",
            "GeomCacheDecoder.cpp",
            "GeomCacheDecoder.h",
            "GeomCacheMeshManager.h",
            "GeomCacheMeshManager.cpp",
        ]
    }
    Group {
        name: "Light Entity"
        files: [
            "LightEntity.cpp",
            "LightEntity.h",
        ]
    }
    Group {
        name: "Material"
        files: [
            "MaterialHelpers.cpp",
            "MaterialHelpers.h",
            "Material.cpp",
            "Material.h",
            "MatMan.cpp",
            "MatMan.h",
            "SurfaceTypeManager.cpp",
            "SurfaceTypeManager.h",
        ]
    }
    Group {
        name: "Mesh Compiler"
        prefix: "MeshCompiler/"
        files: [
            "ForsythFaceReorderer.cpp",
            "MeshCompiler.cpp",
            "TangentSpaceCalculation.cpp",
            "ForsythFaceReorderer.h",
            "MeshCompiler.h",
            "TangentSpaceCalculation.h",
            "TransformHelpers.h",
        ]
    }
    Group {
        name: "Object Manager"
        files: [
            "ObjMan.cpp",
            "ObjManDraw.cpp",
            "ObjManDrawEntity.cpp",
            "ObjManFar.cpp",
            "ObjManShadows.cpp",
            "ObjManStreaming.cpp",
            "ObjMan.h",
        ]
    }
    Group {
        name: "Objects Tree"
        files: [
            "ObjectsTree.cpp",
            "ObjectsTree_MT.cpp",
            "ObjectsTree_Serialize.cpp",
            "ObjectsTree.h",
            "ObjectsTree_Serialize_info.h",
        ]
    }
    Group {
        name: "Particle System"
        prefix: "ParticleSystem/"
        files: [
            "ParticleCommon.h",
            "ParticleAttributes.h",
            "ParticleAttributes.cpp",
            "ParticleDataTypes.h",
            "ParticleDataTypesImpl.h",
            "ParticleDebug.h",
            "ParticleDebug.cpp",
            "ParticleComponent.h",
            "ParticleComponent.cpp",
            "ParticleComponentRuntime.h",
            "ParticleComponentRuntime.cpp",
            "ParticleContainer.h",
            "ParticleContainerImpl.h",
            "ParticleContainer.cpp",
            "ParticleConvert.cpp",
            "ParticleDataStreams.h",
            "ParticleDataStreamsImpl.h",
            "ParticleDataStreamsImplSSE.h",
            "ParticleEffect.h",
            "ParticleEffect.cpp",
            "ParticleEmitter.h",
            "ParticleEmitter.cpp",
            "ParticleFeature.h",
            "ParticleFeature.cpp",
            "ParticleJobManager.h",
            "ParticleJobManager.cpp",
            "ParticleMath.h",
            "ParticleMathImpl.h",
            "ParticleMathImplSSE.h",
            "ParticleProfiler.h",
            "ParticleProfiler.cpp",
            "ParticleProfilerImpl.h",
            "ParticleRender.h",
            "ParticleRender.cpp",
            "ParticleRenderImpl.h",
            "ParticleSpline.h",
            "ParticleSpline.cpp",
            "ParticleSplineImpl.h",
            "ParticleSystem.h",
            "ParticleSystem.cpp",
            "ParticleSystemUnit.cpp",
        ]
    }
    Group {
        name: "Particle System / Features"
        prefix: "ParticleSystem/Features/"
        files: [
            "FeatureCommon.h",
            "FeatureAudio.cpp",
            "FeatureAngles.h",
            "FeatureAnglesImpl.h",
            "FeatureAngles.cpp",
            "FeatureAppearance.cpp",
            "FeatureColor.h",
            "FeatureColor.cpp",
            "FeatureChild.cpp",
            "FeatureCollision.cpp",
            "FeatureCollision.h",
            "FeatureComponent.cpp",
            "FeatureField.cpp",
            "FeatureFluidDynamics.cpp",
            "FeatureLife.cpp",
            "FeatureLightSource.cpp",
            "FeatureLocation.cpp",
            "FeatureMotion.h",
            "FeatureMotion.cpp",
            "FeatureRenderDecal.cpp",
            "FeatureRenderGpuSprites.cpp",
            "FeatureRenderMeshes.cpp",
            "FeatureRenderRibbon.cpp",
            "FeatureRenderSprites.cpp",
            "FeatureProject.cpp",
            "FeatureSecondGen.cpp",
            "FeatureSpawn.cpp",
            "FeatureVelocity.cpp",
            "Modifiers.cpp",
            "MotionAffectors.cpp",
            "ParamMod.h",
            "ParamModImpl.h",
            "ParamTraits.h",
            "ParamTraitsImpl.h",
            "Target.h",
            "Target.cpp",
            "TargetImpl.h",
            "Domain.h",
            "Domain.cpp",
            "DomainImpl.h",
        ]
    }
    Group {
        name: "PostProcess"
        files: [
            "ColorGradingCtrl.cpp",
            "ColorGradingCtrl.h",
            "PostProcessEffects.cpp",
        ]
    }
    Group {
        name: "RenderMeshUtils"
        files: [
            "MergedMeshGeometry.cpp",
            "RenderMeshMerger.cpp",
            "RenderMeshUtils.cpp",
            "MergedMeshGeometry.h",
            "RenderMeshMerger.h",
            "RenderMeshUtils.h",
        ]
    }
    Group {
        name: "RenderNodes"
        files: [
            "MergedMeshRenderNode.cpp",
            "DeformableNode.h",
            "MergedMeshRenderNode.h",
            "RenderNodes/CharacterRenderNode.cpp",
            "RenderNodes/CharacterRenderNode.h",
        ]
    }
    Group {
        name: "RenderNodes / Breakables"
        files: [
            "BreakableGlassRenderNode.cpp",
            "BreakableGlassRenderNode.h",
        ]
    }
    Group {
        name: "RenderNodes / Roads"
        files: [
            "RoadRenderNode.cpp",
            "RoadRenderNode.h",
        ]
    }
    Group {
        name: "RenderNodes / Ropes"
        files: [
            "RopeRenderNode.cpp",
            "RopeRenderNode.h",
        ]
    }
    Group {
        name: "Resource Files"
        files: [
        ]
    }
    Group {
        name: "Shadows"
        files: [
            "ShadowCache.cpp",
            "ShadowCache.h",
        ]
    }
    Group {
        name: "StatObj"
        files: [
            "StatObjPhys.cpp",
            "StatObjRend.cpp",
            "StatObjStream.cpp",
            "IndexedMesh.cpp",
            "StatObjConstr.cpp",
            "StatObjFar.cpp",
            "StatObjLoad.cpp",
            "StatObjFoliage.cpp",
            "IndexedMesh.h",
            "StatObj.h",
            "StatObjFoliage.h",
        ]
    }
    Group {
        name: "SVO"
        prefix: "SVO/"
        files: [
            "BlockPacker.cpp",
            "SceneTree.cpp",
            "SceneTreeManager.cpp",
            "VoxelSegment.cpp",
            "BlockPacker.h",
            "SceneTree.h",
            "SceneTreeManager.h",
            "VoxelSegment.h",
            "SceneTreeCVars.inl",
        ]
    }
    Group {
        name: "Terrain"
        files: [
            "terrain.cpp",
            "terrain_compile.cpp",
            "terrain_damage.cpp",
            "terrain_det_tex.cpp",
            "terrain_hmap.cpp",
            "terrain_hmap_occlusion.cpp",
            "terrain_init.cpp",
            "terrain_light.cpp",
            "terrain_load.cpp",
            "terrain_render.cpp",
            "terran_edit.cpp",
            "TerrainModifications.cpp",
            "TerrainTextureCache.cpp",
            "terrain.h",
            "terrain_compile_info.h",
            "TerrainModifications.h",
        ]
    }
    Group {
        name: "Terrain / Sector"
        files: [
            "terrain_node.cpp",
            "terrain_node_compile.cpp",
            "terrain_sector.cpp",
            "terrain_sector_beach.cpp",
            "terrain_sector_render.cpp",
            "terrain_sector_tex.cpp",
            "terrain_sector.h",
            "terrain_sector_info.h",
        ]
    }
    Group {
        name: "UBER FILES"
        files: [
        ]
    }
    Group {
        name: "Vegetation"
        files: [
            "Vegetation.cpp",
            "Vegetation.h",
        ]
    }
    Group {
        name: "VisAreas"
        files: [
            "VisAreaMan.cpp",
            "VisAreaCompile.cpp",
            "VisAreas.cpp",
            "VisAreaManCompile.cpp",
            "BasicArea.cpp",
            "BasicArea.h",
            "VisAreaCompile_info.h",
            "VisAreas.h",
        ]
    }
    Group {
        name: "Water"
        files: [
            "terrain_water.h",
            "terrain_water_quad.cpp",
            "WaterRippleManager.cpp",
            "WaterRippleManager.h",
            "WaterVolumeRenderNode.cpp",
            "WaterVolumeRenderNode.h",
            "WaterWaveRenderNode.cpp",
            "WaterWaveRenderNode.h",
        ]
    }
    files: [
        "GeomCachePredictors.h",
        "DeferredCollisionEvent.cpp",
        "3DEngineMemory.cpp",
        "Cry3DEngine.cpp",
        "3DEngineMemory.h",
        "Cry3DEngineBase.h",
        "DeferredCollisionEvent.h",
        "resource.h",
        "Array2d.h",
    ]
}
