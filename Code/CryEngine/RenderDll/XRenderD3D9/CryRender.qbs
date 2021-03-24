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
        "../../SDKs/qpOASES/include",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryPhysics",
        "../CrySchematyc/Core/Interface",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["../StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "DeviceManager / D3D11"
        prefix: "DeviceManager/D3D11/"
        files: [
            "DeviceCommandListCommon_D3D11.cpp",
            "DeviceCommandListCommon_D3D11.h",
            "DeviceCommandList_D3D11.h",
            "DeviceObjects_D3D11.cpp",
            "DeviceObjects_D3D11.h",
            "DeviceObjects_D3D11.inl",
            "DevicePSO_D3D11.cpp",
            "DevicePSO_D3D11.h",
            "DeviceRenderPass_D3D11.cpp",
            "DeviceRenderPass_D3D11.h",
            "DeviceResourceSet_D3D11.cpp",
            "DeviceResourceSet_D3D11.h",
            "DeviceResourceSet_D3D11.inl",
            "DeviceResources_D3D11.inl",
            "DeviceResources_D3D11_NVAPI.h",
            "DeviceResources_D3D11_NVAPI.inl",
        ]
    }
    Group {
        name: "DeviceManager / D3D11"
        prefix: "DeviceManager/D3D11/"
        files: [
            "DeviceObjects_D3D11_Durango.cpp",
            "DeviceObjects_D3D11_Durango.h",
            "DeviceResources_D3D11_Durango.inl",
        ]
    }
    Group {
        name: "DeviceManager / D3D11"
        prefix: "DeviceManager/D3D11/"
        files: [
        ]
    }
    Group {
        name: "DeviceManager / D3D12"
        prefix: "DeviceManager/D3D12/"
        files: [
            "DeviceCommandListCommon_D3D12.cpp",
            "DeviceCommandListCommon_D3D12.h",
            "DeviceCommandList_D3D12.h",
            "DeviceObjects_D3D12.cpp",
            "DeviceObjects_D3D12.inl",
            "DevicePSO_D3D12.cpp",
            "DevicePSO_D3D12.h",
            "DeviceRenderPass_D3D12.cpp",
            "DeviceRenderPass_D3D12.h",
            "DeviceResourceSet_D3D12.cpp",
            "DeviceResourceSet_D3D12.h",
            "DeviceResources_D3D12.inl",
        ]
    }
    Group {
        name: "DX12"
        prefix: "DX12/"
        files: [
            "CCryDX12Object.cpp",
            "CCryDX12Object.hpp",
            "CryDX12.cpp",
            "CryDX12.hpp",
            "CryDX12Guid.hpp",
        ]
    }
    Group {
        name: "DX12 / 3rdParty"
        prefix: "DX12/Includes/"
        files: [
            "d3d11TokenizedProgramFormat.hpp",
            "d3dx12.h",
        ]
    }
    Group {
        name: "DX12 / API"
        prefix: "DX12/API/"
        files: [
            "DX12AsyncCommandQueue.cpp",
            "DX12AsyncCommandQueue.hpp",
            "DX12Base.cpp",
            "DX12Base.hpp",
            "DX12CommandList.cpp",
            "DX12CommandList.hpp",
            "DX12CommandListFence.cpp",
            "DX12CommandListFence.hpp",
            "DX12CommandScheduler.cpp",
            "DX12CommandScheduler.hpp",
            "DX12DescriptorHeap.cpp",
            "DX12DescriptorHeap.hpp",
            "DX12Device.cpp",
            "DX12Device.hpp",
            "DX12PSO.cpp",
            "DX12PSO.hpp",
            "DX12QueryHeap.cpp",
            "DX12QueryHeap.hpp",
            "DX12Resource.cpp",
            "DX12Resource.hpp",
            "DX12RootSignature.cpp",
            "DX12RootSignature.hpp",
            "DX12SamplerState.cpp",
            "DX12SamplerState.hpp",
            "DX12Shader.cpp",
            "DX12Shader.hpp",
            "DX12SwapChain.cpp",
            "DX12SwapChain.hpp",
            "DX12View.cpp",
            "DX12View.hpp",
        ]
    }
    Group {
        name: "DX12 / API / Redirections"
        prefix: "DX12/API/Redirections/"
        files: [
            "D3D12CommandAllocator.inl",
            "D3D12CommandQueue.inl",
            "D3D12DescriptorHeap.inl",
            "D3D12Device.inl",
            "D3D12Fence.inl",
            "D3D12GraphicsCommandList.inl",
            "D3D12Heap.inl",
            "D3D12QueryHeap.inl",
            "D3D12Resource.inl",
        ]
    }
    Group {
        name: "DX12 / Device"
        prefix: "DX12/Device/"
        files: [
            "CCryDX12Device.cpp",
            "CCryDX12Device.hpp",
            "CCryDX12DeviceChild.cpp",
            "CCryDX12DeviceChild.hpp",
            "CCryDX12DeviceContext.cpp",
            "CCryDX12DeviceContext.hpp",
        ]
    }
    Group {
        name: "DX12 / GI"
        prefix: "DX12/GI/"
        files: [
            "CCryDX12GIAdapter.cpp",
            "CCryDX12GIAdapter.hpp",
            "CCryDX12GIDevice.cpp",
            "CCryDX12GIDevice.hpp",
            "CCryDX12GIFactory.cpp",
            "CCryDX12GIFactory.hpp",
            "CCryDX12GIOutput.cpp",
            "CCryDX12GIOutput.hpp",
            "CCryDX12SwapChain.cpp",
            "CCryDX12SwapChain.hpp",
        ]
    }
    Group {
        name: "DX12 / Misc"
        prefix: "DX12/Misc/"
        files: [
            "SCryDX11PipelineState.cpp",
            "SCryDX11PipelineState.hpp",
        ]
    }
    Group {
        name: "DX12 / Resource"
        prefix: "DX12/Resource/"
        files: [
            "CCryDX12Asynchronous.cpp",
            "CCryDX12Asynchronous.hpp",
            "CCryDX12Resource.cpp",
            "CCryDX12Resource.hpp",
            "CCryDX12View.cpp",
            "CCryDX12View.hpp",
        ]
    }
    Group {
        name: "DX12 / Resource / Misc"
        prefix: "DX12/Resource/Misc/"
        files: [
            "CCryDX12Buffer.cpp",
            "CCryDX12Buffer.hpp",
            "CCryDX12InputLayout.cpp",
            "CCryDX12InputLayout.hpp",
            "CCryDX12Query.cpp",
            "CCryDX12Query.hpp",
            "CCryDX12Shader.cpp",
            "CCryDX12Shader.hpp",
        ]
    }
    Group {
        name: "DX12 / Resource / State"
        prefix: "DX12/Resource/State/"
        files: [
            "CCryDX12BlendState.cpp",
            "CCryDX12BlendState.hpp",
            "CCryDX12DepthStencilState.cpp",
            "CCryDX12DepthStencilState.hpp",
            "CCryDX12RasterizerState.cpp",
            "CCryDX12RasterizerState.hpp",
            "CCryDX12SamplerState.cpp",
            "CCryDX12SamplerState.hpp",
        ]
    }
    Group {
        name: "DX12 / Resource / Texture"
        prefix: "DX12/Resource/Texture/"
        files: [
            "CCryDX12Texture1D.cpp",
            "CCryDX12Texture1D.hpp",
            "CCryDX12Texture2D.cpp",
            "CCryDX12Texture2D.hpp",
            "CCryDX12Texture3D.cpp",
            "CCryDX12Texture3D.hpp",
            "CCryDX12TextureBase.cpp",
            "CCryDX12TextureBase.hpp",
        ]
    }
    Group {
        name: "DX12 / Resource / View"
        prefix: "DX12/Resource/View/"
        files: [
            "CCryDX12DepthStencilView.cpp",
            "CCryDX12DepthStencilView.hpp",
            "CCryDX12RenderTargetView.cpp",
            "CCryDX12RenderTargetView.hpp",
            "CCryDX12ShaderResourceView.cpp",
            "CCryDX12ShaderResourceView.hpp",
            "CCryDX12UnorderedAccessView.cpp",
            "CCryDX12UnorderedAccessView.hpp",
        ]
    }
    Group {
        name: "DX11"
        prefix: "DX11/"
        files: [
            "CryDX11.cpp",
            "CryDX11.hpp",
        ]
    }
    Group {
        name: "DX11 / API"
        prefix: "DX11/API/"
        files: [
            "DX11Base.cpp",
            "DX11Base.hpp",
            "DX11CommandList.cpp",
            "DX11CommandList.hpp",
            "DX11CommandListFence.cpp",
            "DX11CommandListFence.hpp",
            "DX11CommandListPool.cpp",
            "DX11CommandListPool.hpp",
            "DX11CommandScheduler.cpp",
            "DX11CommandScheduler.hpp",
            "DX11Device.cpp",
            "DX11Device.hpp",
        ]
    }
    Group {
        name: "Common"
        files: [
            "GpuHeap.cpp",
            "GpuHeap.h",
            "GpuHeap.natvis",
        ]
    }
    //Group {
    //    name: "DeviceManager / GNM"
    //    prefix: "DeviceManager/GNM/"
    //    files: [
    //        "DeviceCommandList_GNM.h",
    //        "DeviceCommandList_GNM.inl",
    //        "DeviceObjects_GNM.cpp",
    //        "DeviceObjects_GNM.inl",
    //        "DeviceResources_GNM.inl",
    //    ]
    //}
    //Group {
    //    name: "GNM"
    //    prefix: "GNM/"
    //    files: [
    //        "GnmBase.hpp",
    //        "GnmBuffer.cpp",
    //        "GnmBuffer.hpp",
    //        "GnmBuiltIn.hpp",
    //        "GnmCache.cpp",
    //        "GnmCache.hpp",
    //        "GnmCommandList.cpp",
    //        "GnmCommandList.hpp",
    //        "GnmCommon.cpp",
    //        "GnmCommon.hpp",
    //        "GnmDebugHelpers.natvis",
    //        "GnmDevice.cpp",
    //        "GnmDevice.hpp",
    //        "GnmGpuState.cpp",
    //        "GnmGpuState.hpp",
    //        "GnmHeap.cpp",
    //        "GnmHeap.hpp",
    //        "GnmLegacy.cpp",
    //        "GnmLegacy.hpp",
    //        "GnmPipelineState.cpp",
    //        "GnmPipelineState.hpp",
    //        "GnmQuery.hpp",
    //        "GnmReflection.cpp",
    //        "GnmReflection.hpp",
    //        "GnmRenderer.hpp",
    //        "GnmResource.hpp",
    //        "GnmResourceLayout.cpp",
    //        "GnmResourceLayout.hpp",
    //        "GnmResourceLookup.hpp",
    //        "GnmResourceSet.cpp",
    //        "GnmResourceSet.hpp",
    //        "GnmSampler.cpp",
    //        "GnmSampler.hpp",
    //        "GnmScratch.cpp",
    //        "GnmScratch.hpp",
    //        "GnmShader.hpp",
    //        "GnmShaderCompiler.hpp",
    //        "GnmShaderLoader.cpp",
    //        "GnmShaderRuntime.cpp",
    //        "GnmShaderTools.hpp",
    //        "GnmSwapChain.cpp",
    //        "GnmSwapChain.hpp",
    //        "GnmTexture.cpp",
    //        "GnmTexture.hpp",
    //    ]
    //}
    Group {
        name: "Source Files"
        files: [
            "D3DMeshBaker.cpp",
        ]
    }
    Group {
        name: "DeviceManager / Vulkan"
        prefix: "DeviceManager/Vulkan/"
        files: [
            "DeviceCommandListCommon_Vulkan.cpp",
            "DeviceCommandListCommon_Vulkan.h",
            "DeviceCommandList_Vulkan.h",
            "DeviceObjects_Vulkan.cpp",
            "DeviceObjects_Vulkan.inl",
            "DevicePSO_Vulkan.cpp",
            "DevicePSO_Vulkan.h",
            "DeviceRenderPass_Vulkan.cpp",
            "DeviceRenderPass_Vulkan.h",
            "DeviceResourceSet_Vulkan.cpp",
            "DeviceResourceSet_Vulkan.h",
            "DeviceResources_Vulkan.inl",
        ]
    }
    Group {
        name: "Vulkan"
        prefix: "Vulkan/"
        files: [
            "CryVulkan.cpp",
            "CryVulkan.hpp",
            "D3DVKConversionUtility.hpp",
        ]
    }
    Group {
        name: "Vulkan / API"
        prefix: "Vulkan/API/"
        files: [
            "VKAsyncCommandQueue.cpp",
            "VKAsyncCommandQueue.hpp",
            "VKBase.cpp",
            "VKBase.hpp",
            "VKBufferResource.cpp",
            "VKBufferResource.hpp",
            "VKCommandList.cpp",
            "VKCommandList.hpp",
            "VKCommandListFence.cpp",
            "VKCommandListFence.hpp",
            "VKCommandScheduler.cpp",
            "VKCommandScheduler.hpp",
            "VKDevice.cpp",
            "VKDevice.hpp",
            "VKExtensions.cpp",
            "VKExtensions.hpp",
            "VKHeap.cpp",
            "VKHeap.hpp",
            "VKImageResource.cpp",
            "VKImageResource.hpp",
            "VKInstance.cpp",
            "VKInstance.hpp",
            "VKLegacyToBeRemoved.cpp",
            "VKMemoryResource.cpp",
            "VKMemoryResource.hpp",
            "VKOcclusionQueryManager.cpp",
            "VKOcclusionQueryManager.hpp",
            "VKResourceView.cpp",
            "VKResourceView.hpp",
            "VKSampler.cpp",
            "VKSampler.hpp",
            "VKShader.cpp",
            "VKShader.hpp",
            "VKSwapChain.cpp",
            "VKSwapChain.hpp",
            "VkSpirvHelper.hpp",
        ]
    }
    Group {
        name: "Vulkan / CryVulkanWrappers / GI"
        prefix: "Vulkan/CryVulkanWrappers/GI/"
        files: [
            "CCryVKGIAdapter.cpp",
            "CCryVKGIAdapter.hpp",
            "CCryVKGIFactory.cpp",
            "CCryVKGIFactory.hpp",
            "CCryVKGIObject.hpp",
            "CCryVKGIOutput.cpp",
            "CCryVKGIOutput.hpp",
            "CCryVKGuid.hpp",
            "CCryVKMisc.hpp",
            "CCryVKSwapChain.cpp",
            "CCryVKSwapChain.hpp",
        ]
    }
    Group {
        name: "Vulkan / CryVulkanWrappers / Resources"
        prefix: "Vulkan/CryVulkanWrappers/Resources/"
        files: [
            "CCryVKShaderReflection.cpp",
            "CCryVKShaderReflection.hpp",
        ]
    }
    //Group {
    //    name: "Vulkan / CryVulkanWrappers / GI / DXGI"
    //    prefix: "Vulkan/CryVulkanWrappers/GI/DXGI"
    //    files: [
    //        "CCryVKGIAdapter_DXGI.cpp",
    //        "CCryVKGIAdapter_DXGI.hpp",
    //        "CCryVKGIFactory_DXGI.cpp",
    //        "CCryVKGIFactory_DXGI.hpp",
    //        "CCryVKGIOutput_DXGI.cpp",
    //        "CCryVKGIOutput_DXGI.hpp",
    //    ]
    //}
    Group {
        name: "Header Files / Gpu"
        prefix: "Gpu/"
        files: [
            "GpuBitonicSort.h",
            "GpuComputeBackend.h",
        ]
    }
    Group {
        name: "Header Files / Gpu / Particles"
        prefix: "Gpu/Particles/"
        files: [
            "GpuParticleComponentRuntime.h",
            "GpuParticleContainer.h",
            "GpuParticleFeatureBase.h",
            "GpuParticleFeatureCollision.h",
            "GpuParticleFeatureColor.h",
            "GpuParticleFeatureFactory.h",
            "GpuParticleFeatureField.h",
            "GpuParticleFeatureFluidDynamics.h",
            "GpuParticleFeatureMotion.h",
            "GpuParticleManager.h",
        ]
    }
    Group {
        name: "Header Files / Gpu / Physics"
        prefix: "Gpu/Physics/"
        files: [
            "GpuPhysicsParticleFluid.h",
        ]
    }
    Group {
        name: "Source Files / Gpu"
        prefix: "Gpu/"
        files: [
            "GpuBitonicSort.cpp",
            "GpuComputeBackend.cpp",
            "GpuMergeSort.cpp",
        ]
    }
    Group {
        name: "Source Files / Gpu / Particles"
        prefix: "Gpu/Particles/"
        files: [
            "GpuParticleComponentRuntime.cpp",
            "GpuParticleContainer.cpp",
            "GpuParticleFeatureCollision.cpp",
            "GpuParticleFeatureColor.cpp",
            "GpuParticleFeatureFactory.cpp",
            "GpuParticleFeatureField.cpp",
            "GpuParticleFeatureFluidDynamics.cpp",
            "GpuParticleFeatureMotion.cpp",
            "GpuParticleManager.cpp",
        ]
    }
    Group {
        name: "Source Files / Gpu / Physics"
        prefix: "Gpu/Physics/"
        files: [
            "GpuPhysicsParticleFluid.cpp",
        ]
    }
    Group {
        name: "Common"
        prefix: "../Common/"
        files: [
            "ResFile.cpp",
            "ResFileLookupDataMan.cpp",
        ]
    }
    Group {
        name: "Common_h"
        prefix: "../Common/"
        files: [
            "ResFile.h",
            "ResFileLookupDataMan.h",
            "ResFile_info.h",
        ]
    }
    Group {
        name: "Common / RendElements"
        files: [
            "../Common/RendElements/CREBreakableGlass.cpp",
            "../Common/RendElements/CREClientPoly.cpp",
            "../Common/RendElements/CREFogVolume.cpp",
            "../Common/RendElements/CREGameEffect.cpp",
            "../Common/RendElements/CREGeomCache.cpp",
            "../Common/RendElements/CREMesh.cpp",
            "../Common/RendElements/CREOclusionQuery.cpp",
            "CRELensOpticsD3D.cpp",
        ]
    }
    Group {
        name: "Common / RendElements"
        prefix: "../Common/RendElements/"
        files: [
            "CREClientPoly.h",
            "CRELensOptics.h",
            "CREMeshImpl.h",
            "CREParticle.cpp",
            "CREWaterOcean.cpp",
            "CREWaterVolume.cpp",
            "RendElement.cpp",
        ]
    }
    Group {
        name: "Common / RendElements / LensOptics"
        prefix: "../Common/RendElements/"
        files: [
            "AbstractMeshElement.cpp",
            "AbstractMeshElement.h",
            "CameraOrbs.cpp",
            "CameraOrbs.h",
            "ChromaticRing.cpp",
            "ChromaticRing.h",
            "FlareSoftOcclusionQuery.cpp",
            "FlareSoftOcclusionQuery.h",
            "Ghost.cpp",
            "Ghost.h",
            "Glow.cpp",
            "Glow.h",
            "ImageSpaceShafts.cpp",
            "ImageSpaceShafts.h",
            "Interpolator.h",
            "IrisShafts.cpp",
            "IrisShafts.h",
            "MeshUtil.cpp",
            "MeshUtil.h",
            "OpticsElement.cpp",
            "OpticsElement.h",
            "OpticsFactory.cpp",
            "OpticsFactory.h",
            "OpticsGroup.cpp",
            "OpticsGroup.h",
            "OpticsPredef.hpp",
            "OpticsProxy.cpp",
            "OpticsProxy.h",
            "OpticsReference.cpp",
            "OpticsReference.h",
            "RootOpticsElement.cpp",
            "RootOpticsElement.h",
            "Streaks.cpp",
            "Streaks.h",
            "Timeline.h",
        ]
    }
    Group {
        name: "Common / RendElements / Utils"
        prefix: "../Common/RendElements/Utils/"
        files: [
            "PolygonMath2D.cpp",
            "PolygonMath2D.h",
            "SpatialHashGrid.h",
        ]
    }
    Group {
        name: "Common / Textures"
        prefix: "../Common/Textures/"
        files: [
            "DynTexture.cpp",
            "ITextureStreamer.cpp",
            "PlanningTextureStreamer.cpp",
            "PlanningTextureStreamer.h",
            "PlanningTextureStreamer_Jobs.cpp",
            "PowerOf2BlockPacker.cpp",
            "PowerOf2BlockPacker.h",
            "StatoscopeTextureStreaming.cpp",
            "StatoscopeTextureStreaming.h",
            "Texture.cpp",
            "Texture.h",
            "TextureArrayAlloc.h",
            "TextureCompiler.cpp",
            "TextureCompiler.h",
            "TextureHelpers.cpp",
            "TextureHelpers.h",
            "TextureManager.cpp",
            "TextureManager.h",
            "TextureStreamPool.h",
            "TextureStreaming.cpp",
        ]
    }
    Group {
        name: "Common / Textures / Image"
        prefix: "../Common/Textures/Image/"
        files: [
            "CImage.cpp",
            "CImage.h",
            "DDSImage.cpp",
            "DDSImage.h",
            "JpgImage.cpp",
            "PngImage.cpp",
            "TgaImage.cpp",
            "TifImage.cpp",
        ]
    }
    Group {
        name: "Header Files"
        files: [
            "D3DREBreakableGlassBuffer.h",
            "D3D_SVO.h",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "D3DAmbientOcclusion.cpp",
            "D3DDebug.cpp",
            "D3DDeferredRender.cpp",
            "D3DDeferredShading.cpp",
            "D3DFXPipeline.cpp",
            "D3DFont.cpp",
            "D3DHWShader.cpp",
            "D3DHWShaderCompiling.cpp",
            "D3DHmdEmulator.cpp",
            "D3DMultiResRendering.cpp",
            "D3DOcclQuery.cpp",
            "D3DOculus.cpp",
            "D3DOpenVR.cpp",
            "D3DOsvr.cpp",
            "D3DREBreakableGlass.cpp",
            "D3DREBreakableGlassBuffer.cpp",
            "D3D_SVO.cpp",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "CompiledRenderObject.cpp",
            "D3DRendPipeline.cpp",
            "D3DRenderAuxGeom.cpp",
            "D3DRenderThread.cpp",
            "D3DShaders.cpp",
            "D3DShadows.cpp",
            "D3DStereo.cpp",
            "D3DSystem.cpp",
            "D3DTexture.cpp",
            "D3DTextureStreamPool.cpp",
            "D3DTexturesStreaming.cpp",
        ]
    }
    Group {
        name: "Source Files / Benchmark Customization"
        prefix: "BenchmarkCustom/"
        files: [
            "BenchmarkRendererSensor.cpp",
            "BenchmarkRendererSensor.h",
        ]
    }
    Group {
        name: "Header Files"
        files: [
            "SmartGlassManager.h",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "DriverD3D.cpp",
            "PipelineProfiler.cpp",
            "SmartGlassContext.cpp",
            "SmartGlassManager.cpp",
            "StatoscopeRenderStats.cpp",
        ]
    }
    Group {
        name: "Source Files / D3DPostProcess"
        files: [
            "D3DPostProcess.cpp",
            "PostProcessDOF.cpp",
            "PostProcessFilters.cpp",
            "PostProcessGame.cpp",
            "PostProcessHud3D.cpp",
            "PostProcessMisc.cpp",
            "PostProcessMotionBlur.cpp",
            "PostProcessRenderModes.cpp",
            "PostProcessSunShafts.cpp",
            "PostProcessWater.cpp",
        ]
    }
    Group {
        name: "Common"
        prefix: "../Common/"
        files: [
            "CommonRender.cpp",
            "CommonRender.h",
            "DeferredRenderUtils.cpp",
            "DeferredRenderUtils.h",
            "Include_HLSL_CPP_Shared.h",
            "IntroMovieRenderer.cpp",
            "IntroMovieRenderer.h",
            "LightVolumeBuffer.cpp",
            "LockFreeAddVector.h",
            "MatrixStack.cpp",
            "OcclQuery.h",
            "OptimizeTransparentRenderItemsResolves.cpp",
            "ParticleBuffer.cpp",
            "RenderAuxGeom.cpp",
            "RenderAuxGeom.h",
            "RenderDisplayContext.cpp",
            "RenderDisplayContext.h",
            "RenderFrameProfiler.h",
            "RenderItemDrawer.cpp",
            "RenderItemDrawer.h",
            "RenderOutput.cpp",
            "RenderOutput.h",
            "RenderPipeline.cpp",
            "RenderPipeline.h",
            "RenderThread.cpp",
            "RenderThread.h",
            "RenderView.cpp",
            "RenderView.h",
            "Renderer.cpp",
            "Renderer.h",
            "RendererCVars.cpp",
            "RendererCVars.h",
            "RendererResources.cpp",
            "RendererResources.h",
            "ReverseDepth.h",
            "ShadowUtils.cpp",
            "ShadowUtils.h",
            "Shadow_Renderer.cpp",
            "Shadow_Renderer.h",
            "SmartGlassContext.h",
            "SwapChain.cpp",
            "SwapChain.h",
            "TextMessages.cpp",
            "TextMessages.h",
            "WaterUtils.cpp",
            "WaterUtils.h",
        ]
    }
    Group {
        name: "Header Files"
        files: [
            "../Common/CryNameR.h",
            "../Common/Defs.h",
            "../Common/ISmartGlassContext.h",
            "../Common/LightVolumeBuffer.h",
            "../Common/ParticleBuffer.h",
            "CompiledRenderObject.h",
            "D3DDebug.h",
            "D3DDeferredShading.h",
            "D3DHWShader.h",
            "D3DHmdEmulator.h",
            "D3DMultiResRendering.h",
            "D3DOculus.h",
            "D3DOpenVR.h",
            "D3DOsvr.h",
            "D3DPostProcess.h",
            "D3DRenderAuxGeom.h",
            "D3DStereo.h",
            "DeviceInfo.h",
            "DeviceInfo.inl",
            "DriverD3D.h",
            "../Common/Textures/ITextureStreamer.h",
            "NullD3D11Device.h",
            "PipelineProfiler.h",
            "../Common/Shaders/ShaderAllocator.h",
            "StatoscopeRenderStats.h",
            "resource.h",
        ]
    }
    Group {
        name: "Scaleform"
        prefix: "../Scaleform/"
        files: [
            "Scaleform.cpp",
            "ScaleformPlayback.cpp",
            "ScaleformPlayback.h",
            "ScaleformRender.cpp",
            "ScaleformRender.h",
        ]
    }
    Group {
        name: "Common / PostProcess"
        prefix: "../Common/PostProcess/"
        files: [
            "PostEffects.cpp",
            "PostEffects.h",
            "PostProcess.cpp",
            "PostProcess.h",
            "PostProcessUtils.cpp",
            "PostProcessUtils.h",
        ]
    }
    Group {
        name: "Common / RenderMesh"
        prefix: "../Common/"
        files: [
            "ComputeSkinningStorage.h",
            "RenderMesh.cpp",
            "RenderMesh.h",
            "RenderMesh_Render.cpp",
            "RenderMesh_SetMesh.cpp",
        ]
    }
    Group {
        name: "Common / Shaders"
        prefix: "../Common/Shaders/"
        files: [
            "CShader.h",
            "CShaderBin.h",
            "Parser.cpp",
            "Parser.h",
            "ParserBin.cpp",
            "ParserBin.h",
            "RemoteCompiler.cpp",
            "RemoteCompiler.h",
            "Shader.h",
            "ShaderCache.cpp",
            "ShaderCache.h",
            "ShaderComponents.cpp",
            "ShaderComponents.h",
            "ShaderCore.cpp",
            "ShaderFXParseBin.cpp",
            "ShaderParse.cpp",
            "ShaderPublicParams.cpp",
            "ShaderPublicParams.h",
            "ShaderResources.cpp",
            "ShaderResources.h",
            "ShaderScript.cpp",
            "ShaderSerialize.cpp",
            "ShaderSerialize.h",
            "ShaderTemplate.cpp",
        ]
    }
    Group {
        name: "DeviceManager"
        files: [
            "../Common/DevBuffer.h",
            "DevBuffer.cpp",
            "DeviceManager/DeviceCommandList.inl",
            "DeviceManager/DeviceCommandListCommon.cpp",
            "DeviceManager/DeviceCommandListCommon.h",
            "DeviceManager/DeviceFormats.cpp",
            "DeviceManager/DeviceFormats.h",
            "DeviceManager/DeviceObjectHelpers.cpp",
            "DeviceManager/DeviceObjectHelpers.h",
            "DeviceManager/DeviceObjectValidation.cpp",
            "DeviceManager/DeviceObjectValidation.h",
            "DeviceManager/DeviceObjects.cpp",
            "DeviceManager/DeviceObjects.h",
            "DeviceManager/DeviceObjects.inl",
            "DeviceManager/DevicePSO.cpp",
            "DeviceManager/DevicePSO.h",
            "DeviceManager/DeviceRenderPass.cpp",
            "DeviceManager/DeviceRenderPass.h",
            "DeviceManager/DeviceResourceSet.cpp",
            "DeviceManager/DeviceResourceSet.h",
            "DeviceManager/DeviceResources.cpp",
            "DeviceManager/DeviceResources.h",
        ]
    }
    Group {
        name: "GraphicsPipeline"
        prefix: "GraphicsPipeline/"
        files: [
            "AutoExposure.cpp",
            "AutoExposure.h",
            "BillboardGraphicsPipeline.cpp",
            "BillboardGraphicsPipeline.h",
            "Bloom.cpp",
            "Bloom.h",
            "CharacterToolGraphicsPipeline.cpp",
            "CharacterToolGraphicsPipeline.h",
            "ClipVolumes.cpp",
            "ClipVolumes.h",
            "ColorGrading.cpp",
            "ColorGrading.h",
            "ComputeSkinning.cpp",
            "ComputeSkinning.h",
            "DebugRenderTargets.cpp",
            "DebugRenderTargets.h",
            "DeferredDecals.cpp",
            "DeferredDecals.h",
            "DepthOfField.cpp",
            "DepthOfField.h",
            "Fog.cpp",
            "Fog.h",
            "GpuParticles.cpp",
            "GpuParticles.h",
            "HeightMapAO.cpp",
            "HeightMapAO.h",
            "LensOptics.cpp",
            "LensOptics.h",
            "MinimumGraphicsPipeline.cpp",
            "MinimumGraphicsPipeline.h",
            "MobileComposition.cpp",
            "MobileComposition.h",
            "MobileGraphicsPipeline.cpp",
            "MobileGraphicsPipeline.h",
            "MotionBlur.cpp",
            "MotionBlur.h",
            "OmniCamera.cpp",
            "OmniCamera.h",
            "PostAA.cpp",
            "PostAA.h",
            "PostEffects.cpp",
            "PostEffects.h",
            "Rain.cpp",
            "Rain.h",
            "SceneCustom.cpp",
            "SceneCustom.h",
            "SceneDepth.cpp",
            "SceneDepth.h",
            "SceneForward.cpp",
            "SceneForward.h",
            "SceneGBuffer.cpp",
            "SceneGBuffer.h",
            "ScreenSpaceObscurance.cpp",
            "ScreenSpaceObscurance.h",
            "ScreenSpaceReflections.cpp",
            "ScreenSpaceReflections.h",
            "ScreenSpaceSSS.cpp",
            "ScreenSpaceSSS.h",
            "ShadowMap.cpp",
            "ShadowMap.h",
            "ShadowMask.cpp",
            "ShadowMask.h",
            "Sky.cpp",
            "Sky.h",
            "Snow.cpp",
            "Snow.h",
            "StandardGraphicsPipeline.cpp",
            "StandardGraphicsPipeline.h",
            "SunShafts.cpp",
            "SunShafts.h",
            "TiledLightVolumes.cpp",
            "TiledLightVolumes.h",
            "TiledShading.cpp",
            "TiledShading.h",
            "ToneMapping.cpp",
            "ToneMapping.h",
            "VolumetricClouds.cpp",
            "VolumetricClouds.h",
            "VolumetricFog.cpp",
            "VolumetricFog.h",
            "Water.cpp",
            "Water.h",
            "WaterRipples.cpp",
            "WaterRipples.h",
        ]
    }
    Group {
        name: "GraphicsPipeline / Common"
        prefix: "GraphicsPipeline/Common/"
        files: [
            "ComputeRenderPass.cpp",
            "ComputeRenderPass.h",
            "FullscreenPass.cpp",
            "FullscreenPass.h",
            "GraphicsPipeline.cpp",
            "GraphicsPipeline.h",
            "GraphicsPipelineStage.cpp",
            "GraphicsPipelineStage.h",
            "GraphicsPipelineStateSet.cpp",
            "GraphicsPipelineStateSet.h",
            "PrimitiveRenderPass.cpp",
            "PrimitiveRenderPass.h",
            "RenderPassBase.h",
            "RenderPassScheduler.cpp",
            "RenderPassScheduler.h",
            "SceneRenderPass.cpp",
            "SceneRenderPass.h",
            "UtilityPasses.cpp",
            "UtilityPasses.h",
        ]
    }
}
