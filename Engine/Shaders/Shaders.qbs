import qbs 1.0

Library {
    Group {
        name: "CryFX / Deferred"
        prefix: "HWScripts/CryFX/"
        files: [
            "DeferredCaustics.cfx",
            "DeferredRain.cfx",
            "DeferredShading.cfx",
            "DeferredSnow.cfx",
            "VolumeLighting.cfi",
        ]
    }
    Group {
        name: "CryFX / Effects / Atmospheric"
        prefix: "HWScripts/CryFX/"
        files: [
            "Clouds.cfx",
            "Common.cfx",
            "DistanceClouds.cfx",
            "FogVolume.cfx",
            "Sky.cfx",
            "SkyHDR.cfx",
            "Stars.cfx",
            "TemplBeamProc.cfx",
        ]
    }
    Group {
        name: "CryFX / Effects / Game"
        files: [
        ]
    }
    Group {
        name: "CryFX / Effects / Optic"
        prefix: "HWScripts/CryFX/"
        files: [
            "LensOptics.cfx",
            "Light.cfx",
        ]
    }
    Group {
        name: "CryFX / Effects / Water"
        prefix: "HWScripts/CryFX/"
        files: [
            "Water.cfx",
            "WaterCausticsPass.cfi",
            "WaterCommon.cfi",
            "WaterFogVolume.cfx",
            "WaterOceanBottom.cfx",
            "WaterReflectionsPass.cfi",
            "WaterVolume.cfx",
        ]
    }
    Group {
        name: "CryFX / Extensions"
        files: [
            "DistanceClouds.ext",
            "Eye.ext",
            "Glass.ext",
            "Hair.ext",
            "HumanSkin.ext",
            "Illum.ext",
            "MultiLayeredMaterials.ext",
            "ParticleImposter.ext",
            "Particles.ext",
            "RunTime.ext",
            "ShadowMaskGen.ext",
            "SkyHDR.ext",
            "TemplBeamProc.ext",
            "Terrain.ext",
            "Vegetation.ext",
            "Water.ext",
            "WaterVolume.ext",
        ]
    }
    Group {
        name: "CryFX / ForwardShading"
        prefix: "HWScripts/CryFX/"
        files: [
            "Eye.cfx",
            "Glass.cfx",
            "Hair.cfx",
            "HumanSkin.cfx",
            "Illum.cfx",
            "MultiLayeredMaterials.cfx",
            "Terrain.cfx",
            "Vegetation.cfx",
        ]
    }
    Group {
        name: "CryFX / ForwardShading / Include"
        prefix: "HWScripts/CryFX/"
        files: [
            "ForwardShading.cfi",
            "HumanSkinTess.cfi",
            "IllumTess.cfi",
            "TiledShading.cfi",
            "VegetationTess.cfi",
            "vertexLib.cfi",
        ]
    }
    Group {
        name: "CryFX / ForwardShading / Validations"
        prefix: "HWScripts/CryFX/"
        files: [
            "HumanSkinValidations.cfi",
            "IllumValidations.cfi",
            "VegetationValidations.cfi",
        ]
    }
    Group {
        name: "CryFX / Include"
        prefix: "HWScripts/CryFX/"
        files: [
            "Common.cfi",
            "FXConstantDefs.cfi",
            "FXSamplerDefs.cfi",
            "FXStreamDefs.cfi",
            "LightVolumes.cfi",
            "MeshBaker.cfi",
            "ModificatorTC.cfi",
            "ModificatorVT.cfi",
            "VolumetricFog.cfi",
            "shadeLib.cfi",
        ]
    }
    Group {
        name: "CryFX / Include / CommonPasses"
        prefix: "HWScripts/CryFX/"
        files: [
            "CommonDebugPass.cfi",
            "CommonEffectLayerPass.cfi",
            "CommonMotionBlurPass.cfi",
            "CommonMotionBlurPassTess.cfi",
            "CommonShadowGenPassTess.cfi",
            "CommonTessellation.cfi",
            "CommonViewsPass.cfi",
            "CommonViewsPassTess.cfi",
            "CommonZPass.cfi",
            "CommonZPassTess.cfi",
            "CommonZPrePass.cfi",
            "CommonZPrePassTess.cfi",
        ]
    }
    Group {
        name: "CryFX / Misc"
        prefix: "HWScripts/CryFX/"
        files: [
            "AuxGeom.cfx",
            "ComputeSkinning.cfx",
            "ComputeSkinningUtils.cfi",
            "DXTCompress.cfx",
            "Debug.cfx",
            "DebugLight.cfx",
            "FallBack.cfx",
            "FixedPipelineEmu.cfx",
            "GnmBuiltIn.cfi",
            "GnmBuiltIn.cfx",
            "Helper.cfx",
            "MeshBakerDilate.cfx",
            "MobileComposition.cfx",
            "NoDraw.cfx",
            "OcclusionTest.cfx",
            "ReferenceImage.cfx",
            "Scaleform.cfx",
            "SoftOcclusionQuery.cfx",
        ]
    }
    Group {
        name: "CryFX / Particles"
        prefix: "HWScripts/CryFX/"
        files: [
            "GpuMergeSort.cfx",
            "GpuParticles.cfx",
            "GpuPhysicsParticleFluid.cfx",
            "ParticleImposter.cfx",
            "Particles.cfx",
        ]
    }
    Group {
        name: "CryFX / Particles / Include"
        prefix: "HWScripts/CryFX/"
        files: [
            "GpuCollisionScreenSpace.cfi",
            "GpuMergeSort.cfi",
            "GpuParticlesCommon.cfi",
            "GpuRand.cfi",
            "GpuSNoise.cfi",
            "ParticleVT.cfi",
            "Particles.cfi",
        ]
    }
    Group {
        name: "CryFX / PostProcess"
        prefix: "HWScripts/CryFX/"
        files: [
            "DepthOfField.cfx",
            "HDRPostProcess.cfx",
            "Hud3D.cfx",
            "MotionBlur.cfx",
            "PostAA.cfx",
            "PostEffects.cfx",
            "PostEffectsGame.cfx",
            "PostEffectsRenderModes.cfx",
            "Stereo.cfx",
            "Sunshafts.cfx",
        ]
    }
    Group {
        name: "CryFX / PostProcess / Include"
        prefix: "HWScripts/CryFX/"
        files: [
            "PostEffectsLib.cfi",
        ]
    }
    Group {
        name: "CryFX / SVO"
        prefix: "HWScripts/CryFX/"
        files: [
            "CommonSVO.cfi",
            "Total_Illumination.cfx",
        ]
    }
    Group {
        name: "CryFX / Shadows"
        prefix: "HWScripts/CryFX/"
        files: [
            "ShadowBlur.cfx",
            "ShadowMaskGen.cfx",
        ]
    }
    Group {
        name: "CryFX / Shadows / Include"
        prefix: "HWScripts/CryFX/"
        files: [
            "CommonShadowGenPass.cfi",
            "DeferredShadows.cfi",
            "ShadowCommon.cfi",
        ]
    }
    files: [
        "ShaderProfiles.txt",
    ]
}
