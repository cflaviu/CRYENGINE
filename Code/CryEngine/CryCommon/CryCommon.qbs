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

    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "CryNetwork"
        prefix: "CryNetwork/"
        files: [
            "CrySocks_win32.h",
        ]
    }
    Group {
        name: "CryThreading"
        prefix: "CryThreading/"
        files: [
            "CryAtomics_impl_win32.h",
            "CryAtomics_win32.h",
            "CryThreadImpl_win32.h",
            "CryThread_win32.h",
        ]
    }
    Group {
        name: "CryAssert"
        prefix: "CryAssert/"
        files: [
            "CryAssert_Linux.h",
        ]
    }
    Group {
        name: "CryCore / Platform"
        prefix: "CryCore/Platform/"
        files: [
            "CryPlatform.Linux.h",
            "LinuxSpecific.h",
            "Linux_Win32Wrapper.h",
            "platform_impl_posix.inl",
        ]
    }
    //Group {
    //    name: "CryAssert"
    //    prefix: "CryAssert/"
    //    files: [
    //        "CryAssert_Orbis.h",
    //    ]
    //}
    //Group {
    //    name: "CryCore / Platform"
    //    prefix: "CryCore/Platform/"
    //    files: [
    //        "CryPlatform.Orbis.h",
    //        "OrbisSpecific.h",
    //        "Orbis_Win32Wrapper.h",
    //        "platform_impl_posix.inl",
    //    ]
    //}
    //Group {
    //    name: "CryMemory"
    //    prefix: "CryMemory/"
    //    files: [
    //        "CryMemory/VirtualMemory_impl_sce.h",
    //    ]
    //}
    Group {
        name: "3rdParty / fasthash"
        prefix: "3rdParty/fasthash/"
        files: [
            "fasthash.h",
            "fasthash.inl",
        ]
    }
    //Group {
    //    name: "CryCore / Platform"
    //    prefix: "CryCore/Platform/"
    //    files: [
    //        "CryPlatform.Durango.h",
    //        "DurangoSpecific.h",
    //        "Durango_Win32Legacy.h",
    //    ]
    //}
    Group {
        name: "CryAssert"
        prefix: "CryAssert/"
        files: [
            "CryAssert_Android.h",
        ]
    }
    //Group {
    //    name: "CryCore / Platform"
    //    prefix: "CryCore/Platform/"
    //    files: [
    //        "AndroidJNI.h",
    //        "CryCore/Platform/AndroidJNI.inl",
    //        "CryCore/Platform/AndroidSpecific.h",
    //        "CryCore/Platform/platform_impl_android.inl",
    //        "CryCore/Platform/platform_impl_posix.inl",
    //    ]
    //}
    //Group {
    //    name: "CryCore / Platform"
    //    prefix: "CryCore/Platform/"
    //    files: [
    //        "CryCore/Platform/WinBase_sce.inl",
    //        "CryCore/Platform/platform_impl_orbis.inl",
    //    ]
    //}
    //Group {
    //    name: "CryNetwork"
    //    prefix: "CryNetwork/"
    //    files: [
    //        "CrySocks_sce.h",
    //    ]
    //}
    //Group {
    //    name: "CryThreading"
    //    prefix: "CryThreading/"
    //    files: [
    //        "CryAtomics_sce.h",
    //        "CryThreadImpl_sce.h",
    //    ]
    //}
    Group {
        name: "3rdParty / concqueue"
        prefix: "3rdParty/concqueue/"
        files: [
            "concqueue-mpmc-bounded.hpp",
            "concqueue-mpsc.hpp",
            "concqueue-spsc-bounded.hpp",
            "concqueue-spsc.hpp",
            "concqueue.hpp",
        ]
    }
    Group {
        name: "CryAssert"
        prefix: "CryAssert/"
        files: [
            "CryAssert_Mac.h",
            "CryAssert_iOS.h",
        ]
    }
    Group {
        name: "CryCore / Platform"
        prefix: "CryCore/Platform/"
        files: [
            "AppleSpecific.h",
            "CryPlatform.Darwin.h",
            "IPlatformOS.h",
            "MacSpecific.h",
            "iOSSpecific.h",
            "platform_impl_mac.inl",
        //    "platform_impl_posix.inl",
        ]
    }
    Group {
        name: "CryAssert"
        prefix: "CryAssert/"
        files: [
            "CryAssert_Windows.h",
        ]
    }
    Group {
        name: "CryCore / Platform"
        prefix: "CryCore/Platform/"
        files: [
            "CryPlatform.Win64.h",
            "WindowsSpecific.h",
            "platform_impl_winapi.inl",
        ]
    }
    Group {
        name: "CryEntitySystem"
        prefix: "CryEntitySystem/"
        files: [
            "EntityDesc.h",
            "IBitStream.h",
            "IBreakableGlassSystem.h",
            "IBreakableManager.h",
            "IEntity.h",
            "IEntityBasicTypes.h",
            "IEntityClass.h",
            "IEntityComponent.h",
            "IEntityLayer.h",
            "IEntitySerialize.h",
            "IEntitySystem.h",
        ]
    }
    Group {
        name: "Cry3DEngine"
        prefix: "Cry3DEngine/"
        files: [
            "CREGeomCache.h",
            "CryEngineDecalInfo.h",
            "CryPodArray.h",
            "GeomCacheFileFormat.h",
            "GeomRef.h",
            "GeomRef.inl",
            "I3DEngine.h",
            "I3DEngine_info.h",
            "IBreezeGenerator.h",
            "IColorGradingCtrl.h",
            "IGeomCache.h",
            "IIndexedMesh.h",
            "IIndexedMesh_info.h",
            "IMaterial.h",
            "IMeshObj.h",
            "IRenderNode.h",
            "IRenderNode_info.h",
            "IStatObj.h",
            "ISurfaceType.h",
            "ITimeOfDay.h",
            "ImageExtensionHelper.h",
            "ImageExtensionHelper_info.h",
        ]
    }
    Group {
        name: "Cry3DEngine / CGF"
        prefix: "Cry3DEngine/CGF/"
        files: [
            "CGFContent.h",
            "CGFContent_info.h",
            "CryHeaders.h",
            "CryHeaders_info.h",
            "IChunkFile.h",
        ]
    }
    Group {
        name: "CryAISystem"
        prefix: "CryAISystem/"
        files: [
            "AIRayCastQueue.h",
            "AgentParams.h",
            "HashGrid.h",
            "IAIAction.h",
            "IAIActionSequence.h",
            "IAIActor.h",
            "IAIActorProxy.h",
            "IAIBubblesSystem.h",
            "IAIDebugRenderer.h",
            "IAIGroup.h",
            "IAIGroupProxy.h",
            "IAIMannequin.h",
            "IAIObject.h",
            "IAIObjectManager.h",
            "IAIRateOfDeathHandler.h",
            "IAIRecorder.h",
            "IAISystem.h",
            "IAISystemComponent.h",
            "IActorLookUp.h",
            "IAgent.h",
            "IAuditionMap.h",
            "IBlackBoard.h",
            "IClusterDetector.h",
            "ICollisionAvoidance.h",
            "ICommunicationManager.h",
            "ICoverSystem.h",
            "IFactionMap.h",
            "IGoalPipe.h",
            "IInterestSystem.h",
            "IMovementActor.h",
            "IMovementPlan.h",
            "IMovementPlanner.h",
            "IMovementSystem.h",
            "INavigation.h",
            "INavigationSystem.h",
            "IOffMeshNavigationManager.h",
            "IPathfinder.h",
            "IPerceptionHandler.h",
            "IPerceptionHandlerModifier.h",
            "ISignal.h",
            "ITacticalPointSystem.h",
            "ITargetTrackManager.h",
            "IVisionMap.h",
            "MovementBlock.h",
            "MovementRequest.h",
            "MovementRequestID.h",
            "MovementStyle.h",
            "MovementUpdateContext.h",
            "ValueHistory.h",
            "VisionMapTypes.h",
        ]
    }
    Group {
        name: "CryAISystem / BehaviorTree"
        prefix: "CryAISystem/BehaviorTree/"
        files: [
            "Action.h",
            "BehaviorTreeDefines.h",
            "Composite.h",
            "Decorator.h",
            "IBehaviorTree.h",
            "Node.h",
            "NodeFactory.h",
            "Readme.txt",
            "SerializationSupport.h",
            "TimestampCollection.h",
            "XmlLoader.h",
        ]
    }
    Group {
        name: "CryAISystem / NavigationSystem"
        prefix: "CryAISystem/NavigationSystem/"
        files: [
            "Annotation.h",
            "INavMeshQuery.h",
            "INavMeshQueryDebug.h",
            "INavMeshQueryFilter.h",
            "INavMeshQueryManager.h",
            "INavMeshQueryProcessing.h",
            "INavigationUpdatesManager.h",
            "MNMBaseTypes.h",
            "MNMBoundingVolume.h",
            "MNMFixedAABB.h",
            "MNMFixedVec2.h",
            "MNMFixedVec3.h",
            "MNMNavMesh.h",
            "MNMTile.h",
            "MNMTileGenerator.h",
            "NavMeshQueryFilterDefault.h",
            "NavigationIdTypes.h",
            "OffMeshLink.h",
        ]
    }
    Group {
        name: "CryAISystem / Serialization"
        prefix: "CryAISystem/Serialization/"
        files: [
            "NavigationSerialize.h",
            "NavigationSerialize.inl",
        ]
    }
    Group {
        name: "CryAISystem / Components"
        prefix: "CryAISystem/Components/"
        files: [
            "IEntityBehaviorTreeComponent.h",
            "IEntityCoverUserComponent.h",
            "IEntityFactionComponent.h",
            "IEntityListenerComponent.h",
            "IEntityMarkupShapeComponent.h",
            "IEntityNavigationComponent.h",
            "IEntityObservableComponent.h",
            "IEntityObserverComponent.h",
        ]
    }
    Group {
        name: "CryAction"
        prefix: "CryAction/"
        files: [
            "ICustomActions.h",
            "ICustomEvents.h",
            "IDebugHistory.h",
            "ILipSync.h",
            "ILipSyncProvider.h",
            "IMaterialEffects.h",
            "ITimeDemoRecorder.h",
            "InterpolationHelpers.h",
        ]
    }
    Group {
        name: "CryAnimation"
        prefix: "CryAnimation/"
        files: [
            "CryCharAnimationParams.h",
            "CryCharMorphParams.h",
            "IAnimEventPlayer.h",
            "IAnimationPoseModifier.h",
            "IAttachment.h",
            "ICryAnimation.h",
            "ICryMannequin.h",
            "ICryMannequinDefs.h",
            "ICryMannequinEditor.h",
            "ICryMannequinProceduralClipFactory.h",
            "ICryMannequinTagDefs.h",
            "ICryMannequinUserParams.h",
            "IFacialAnimation.h",
            "IVertexAnimation.h",
        ]
    }
    Group {
        name: "CryAudio"
        prefix: "CryAudio/"
        files: [
            "IAudioInterfacesCommonData.h",
            "IAudioSystem.h",
            "IListener.h",
            "IObject.h",
        ]
    }
    Group {
        name: "CryAudio / Dialog"
        prefix: "CryAudio/Dialog/"
        files: [
            "IDialogSystem.h",
        ]
    }
    Group {
        name: "CryCore"
        prefix: "CryCore/"
        files: [
            "AlignmentTools.h",
            "Base64.h",
            "BaseTypes.h",
            "BitFiddling.h",
            "BitMask.h",
            "BitmapDilation.h",
            "BoostHelpers.h",
            "Common_TypeInfo.h",
            "Common_TypeInfo2.h",
            "CountedValue.h",
            "CrtDebugStats.h",
            "CryCrc32.h",
            "CryCustomTypes.h",
            "CryEndian.h",
            "CryEnumMacro.h",
            "CryFlags.h",
            "CryTypeInfo.h",
            "CryTypeInfo.inl",
            "CryVariant.h",
            "Dispatcher.h",
            "DynamicEnum.h",
            "FindZeroRanges.h",
            "FixedPoint.h",
            "Octree.h",
            "OctreeDebug.h",
            "RingBuffer.h",
            "ScopeGuard.h",
            "SmallFunction.h",
            "StaticInstanceList.h",
            "StlUtils.h",
            "TypeInfo_decl.h",
            "TypeInfo_impl.h",
            "Typelist.h",
            "TypelistUtils.h",
            "Wrapper.h",
            "functor.h",
            "optional.h",
            "smartptr.h",
            "stridedptr.h",
            "xmodule_ptr.h",
        ]
    }
    Group {
        name: "CryCore / Assert"
        prefix: "CryCore/Assert/"
        files: [
            "CryAssert.h",
            "CryAssert_impl.h",
        ]
    }
    Group {
        name: "CryCore / Compiler"
        prefix: "CryCore/Compiler/"
        files: [
            "Clangspecific.h",
            "GCCspecific.h",
            "MSVCspecific.h",
        ]
    }
    Group {
        name: "CryCore / Containers"
        prefix: "CryCore/Containers/"
        files: [
            "CryArray.h",
            "CryFixedArray.h",
            "CryListenerSet.h",
            "CryPtrArray.h",
            "IDMap.h",
            "MiniQueue.h",
            "VariableCollection.h",
            "VectorMap.h",
            "VectorSet.h",
            "intrusive_list.hpp",
        ]
    }
    Group {
        name: "CryCore / Platform"
        prefix: "CryCore/Platform/"
        files: [
            "CryAtlMfc.h",
            "CryDLMalloc.h",
            "CryLibrary.h",
            "CryPlatform.h",
            "CryPlatformDefines.h",
            "CryStlConfig.h",
            "CryWindows.h",
            "WinBase.inl",
            "WindowsUtils.h",
            "platform.h",
            "platform_impl.inl",
        ]
    }
    Group {
        name: "CryCore / Project"
        prefix: "CryCore/Project/"
        files: [
            "CryModuleDefs.h",
            "ProjectDefines.h",
            "Version.h",
            "Version_override.h",
        ]
    }
    Group {
        name: "CryCore / ToolsHelpers"
        prefix: "CryCore/ToolsHelpers/"
        files: [
            "EngineSettingsManager.h",
            "EngineSettingsManager.inl",
            "GuidUtil.h",
            "ResourceCompilerHelper.h",
            "ResourceCompilerHelper.inl",
            "SettingsManagerHelpers.h",
            "SettingsManagerHelpers.inl",
        ]
    }
    Group {
        name: "CryDynamicResponseSystem"
        prefix: "CryDynamicResponseSystem/"
        files: [
            "IDynamicResponseAction.h",
            "IDynamicResponseCondition.h",
            "IDynamicResponseSystem.h",
        ]
    }
    Group {
        name: "CryExtension"
        prefix: "CryExtension/"
        files: [
            "ClassWeaver.h",
            "Conversion.h",
            "CryCreateClassInstance.h",
            "CryGUID.h",
            "CryTypeID.h",
            "ICryFactory.h",
            "ICryFactoryRegistry.h",
            "ICryFactoryRegistryImpl.h",
            "ICryUnknown.h",
            "RegFactoryNode.h",
            "TypeList.h",
        ]
    }
    Group {
        name: "CryFlowGraph"
        prefix: "CryFlowGraph/"
        files: [
            "IFlowBaseNode.h",
            "IFlowGraphDebugger.h",
            "IFlowGraphModuleManager.h",
            "IFlowSystem.h",
        ]
    }
    Group {
        name: "CryFont"
        prefix: "CryFont/"
        files: [
            "IFont.h",
        ]
    }
    Group {
        name: "CryGame"
        prefix: "CryGame/"
        files: [
            "CoherentValue.h",
            "ExtensionDefines.h",
            "GameUtils.h",
            "IGame.h",
            "IGameFramework.h",
            "IGameFrameworkExtension.h",
            "IGameRef.h",
            "IGameStartup.h",
            "IGameStatistics.h",
            "IGameTokens.h",
            "IGameVolumes.h",
            "IGameWebDebug.h",
        ]
    }
    Group {
        name: "CryInput"
        prefix: "CryInput/"
        files: [
            "IHardwareMouse.h",
            "IInput.h",
            "IJoystick.h",
        ]
    }
    Group {
        name: "CryLiveCreate"
        prefix: "CryLiveCreate/"
        files: [
            "ILiveCreateCommon.h",
            "ILiveCreateHost.h",
            "ILiveCreateManager.h",
            "ILiveCreatePlatform.h",
            "IRealtimeRemoteUpdate.h",
        ]
    }
    Group {
        name: "CryLobby"
        prefix: "CryLobby/"
        files: [
            "CommonICryLobby.h",
            "CommonICryMatchMaking.h",
            "CryLobbyEventCallback.h",
            "ICryStats.h",
        ]
    }
    Group {
        name: "CryMath"
        prefix: "CryMath/"
        files: [
            "AABBSV.h",
            "Angle.h",
            "Bezier.h",
            "Bezier_impl.h",
            "CryHalf.inl",
            "CryHalf_info.h",
            "CryRandomInternal.h",
            "Cry_Camera.h",
            "Cry_Color.h",
            "Cry_Geo.h",
            "Cry_GeoDistance.h",
            "Cry_GeoIntersect.h",
            "Cry_GeoOverlap.h",
            "Cry_GeoProjection.h",
            "Cry_Math.h",
            "Cry_Math_SSE.h",
            "Cry_Matrix33.h",
            "Cry_Matrix34.h",
            "Cry_Matrix34H.h",
            "Cry_Matrix44.h",
            "Cry_Matrix44H.h",
            "Cry_MatrixDiag.h",
            "Cry_Quat.h",
            "Cry_ValidNumber.h",
            "Cry_Vector2.h",
            "Cry_Vector3.h",
            "Cry_Vector4.h",
            "Cry_Vector4H.h",
            "Cry_XOptimise.h",
            "FinalizingSpline.h",
            "GeomQuery.h",
            "GeomQuery.inl",
            "ISplineSerialization_impl.h",
            "ISplines.h",
            "LCGRandom.h",
            "MTPseudoRandom.h",
            "NumberVector.h",
            "PNoise3.h",
            "QTangent.h",
            "RadixSort.h",
            "RadixSortImpl.h",
            "Random.h",
            "Range.h",
            "Rotation.h",
            "SNoise.h",
            "SimpleHashLookUp.h",
            "TCBSpline.h",
            "Transform.h",
        ]
    }
    Group {
        name: "CryMemory"
        prefix: "CryMemory/"
        files: [
            "AddressHelpers.h",
            "Allocator.h",
            "BucketAllocator.h",
            "BucketAllocatorImpl.h",
            "BucketAllocatorPolicy.h",
            "CryMemBlock.h",
            "CryMemoryAllocator.h",
            "CryMemoryManager.h",
            "CryMemoryManager_impl.h",
            "CrySizer.h",
            "FixedAllocator.h",
            "HeapAllocator.h",
            "IDefragAllocator.h",
            "IGeneralMemoryHeap.h",
            "ILocalMemoryUsage.h",
            "IMemory.h",
            "MemoryAccess.h",
            "PoolAllocator.h",
            "STLAlignedAlloc.h",
            "STLGlobalAllocator.h",
            "STLPoolAllocator.h",
            "STLPoolAllocator_ManyElems.h",
            "StlDbgAlloc.h",
            "VirtualMemory.h",
            "VirtualMemory_impl.h",
        ]
    }
    Group {
        name: "CryMemory / CryPool"
        prefix: "CryMemory/CryPool/"
        files: [
            "Allocator.h",
            "Container.h",
            "Defrag.h",
            "Fallback.h",
            "Inspector.h",
            "List.h",
            "Memory.h",
            "PAUnitTest.cpp",
            "PoolAlloc.h",
            "STLWrapper.h",
            "ThreadSafe.h",
            "example.h",
        ]
    }
    Group {
        name: "CryMono"
        prefix: "CryMono/"
        files: [
            "IMonoRuntime.h",
        ]
    }
    Group {
        name: "CryMovie"
        prefix: "CryMovie/"
        files: [
            "AnimKey.h",
            "AnimKey_impl.h",
            "AnimTime.h",
            "IMovieSystem.h",
        ]
    }
    Group {
        name: "CryNetwork"
        prefix: "CryNetwork/"
        files: [
            "CrySocks.h",
            "ICryOnlineStorage.h",
            "INetEntity.h",
            "INetwork.h",
            "INetworkService.h",
            "INotificationNetwork.h",
            "IRemoteCommand.h",
            "IRemoteControl.h",
            "ISerialize.h",
            "ISerializeHelper.h",
            "ISerialize_info.h",
            "IServiceNetwork.h",
            "ISimpleHttpServer.h",
            "NetAddress.h",
            "NetHelpers.h",
            "Rmi.h",
            "SerializationTypes.h",
            "SerializeBuffer.h",
            "SerializeFwd.h",
            "SimpleSerialize.h",
        ]
    }
    Group {
        name: "CryParticleSystem"
        prefix: "CryParticleSystem/"
        files: [
            "IParticles.h",
            "IParticlesPfx2.h",
            "Options.h",
            "ParticleParams.h",
            "ParticleParams_TypeInfo.h",
            "ParticleParams_info.h",
        ]
    }
    Group {
        name: "CryPhysics"
        prefix: "CryPhysics/"
        files: [
            "AgePriorityQueue.h",
            "DeferredActionQueue.h",
            "IDeferredCollisionEvent.h",
            "IPhysics.h",
            "IPhysicsDebugRenderer.h",
            "IntersectionTestQueue.h",
            "RayCastQueue.h",
            "physinterface.h",
            "polynomial.h",
            "primitives.h",
            "primitives_info.h",
        ]
    }
    Group {
        name: "CryRenderer"
        prefix: "CryRenderer/"
        files: [
            "IComputeSkinning.h",
            "IFlares.h",
            "IGpuParticles.h",
            "IGpuPhysics.h",
            "IImage.h",
            "IMeshBaking.h",
            "IRenderAuxGeom.h",
            "IRenderMesh.h",
            "IRenderView.h",
            "IRenderer.h",
            "IScaleform.h",
            "IShader.h",
            "IShaderParamCallback.h",
            "IShader_info.h",
            "IStereoRenderer.h",
            "ITexture.h",
            "RenderObject.h",
            "Tarray.h",
            "VertexFormats.h",
            "branchmask.h",
        ]
    }
    Group {
        name: "CryRenderer / RenderElements"
        prefix: "CryRenderer/RenderElements/"
        files: [
            "CREBreakableGlass.h",
            "CREBreakableGlassConfig.h",
            "CREBreakableGlassHelpers.h",
            "CREFogVolume.h",
            "CREGameEffect.h",
            "CREMesh.h",
            "CREOcclusionQuery.h",
            "CREParticle.h",
            "CREWaterOcean.h",
            "CREWaterVolume.h",
            "RendElement.h",
        ]
    }
    Group {
        name: "CrySandbox"
        prefix: "CrySandbox/"
        files: [
            "CryFunction.h",
            "CryInterop.h",
            "CrySignal.h",
            "IEditorGame.h",
            "IFuncVariable.h",
            "ScopedVariableSetter.h",
        ]
    }
    Group {
        name: "CryScriptSystem"
        prefix: "CryScriptSystem/"
        files: [
            "IScriptSystem.h",
        ]
    }
    Group {
        name: "CrySerialization"
        prefix: "CrySerialization/"
        files: [
            "BlackBox.h",
            "CRCRef.h",
            "CRCRefImpl.h",
            "Callback.h",
            "ClassFactory.h",
            "Color.h",
            "ColorImpl.h",
            "CryExtension.h",
            "CryExtensionImpl.h",
            "CryName.h",
            "CryNameImpl.h",
            "CryStrings.h",
            "CryStringsImpl.h",
            "DynArray.h",
            "Enum.h",
            "Forward.h",
            "Gap.h",
            "IArchive.h",
            "IArchiveHost.h",
            "IClassFactory.h",
            "IntrusiveFactory.h",
            "Math.h",
            "MathImpl.h",
            "NameGeneration.h",
            "STL.h",
            "SerializationUtils.h",
            "Serializer.h",
            "SmartPtr.h",
            "SmartPtrImpl.h",
            "StringList.h",
            "TypeID.h",
            "TypeInfo.h",
            "TypeInfoImpl.h",
        ]
    }
    Group {
        name: "CrySerialization / Decorators"
        prefix: "CrySerialization/Decorators/"
        files: [
            "ActionButton.h",
            "BitFlags.h",
            "BitFlagsImpl.h",
            "JointName.h",
            "JointNameImpl.h",
            "LocalFrame.h",
            "LocalFrameImpl.h",
            "OutputFilePath.h",
            "OutputFilePathImpl.h",
            "Range.h",
            "ResourceFilePath.h",
            "ResourceFilePathImpl.h",
            "ResourceFolderPath.h",
            "ResourceFolderPathImpl.h",
            "ResourceSelector.h",
            "Resources.h",
            "ResourcesAudio.h",
            "TagList.h",
            "TagListImpl.h",
        ]
    }
    Group {
        name: "CrySerialization / yasli"
        prefix: "CrySerialization/yasli/"
        files: [
            "Archive.h",
            "Assert.h",
            "BinArchive.h",
            "BinArchiveImpl.h",
            "BitVector.h",
            "BitVectorImpl.h",
            "BlackBox.h",
            "Callback.h",
            "ClassFactory.h",
            "ClassFactoryBase.h",
            "ClassFactoryImpl.h",
            "Config.h",
            "ConfigLocal.h",
            "Enum.h",
            "EnumImpl.h",
            "Helpers.h",
            "JSONIArchive.h",
            "JSONIArchiveImpl.h",
            "JSONOArchive.h",
            "JSONOArchiveImpl.h",
            "KeyValue.h",
            "KeyValueDictionary.h",
            "MemoryReader.h",
            "MemoryReaderImpl.h",
            "MemoryWriter.h",
            "MemoryWriterImpl.h",
            "Object.h",
            "Pointers.h",
            "PointersImpl.h",
            "STL.h",
            "STLImpl.h",
            "Serializer.h",
            "SerializerImpl.h",
            "StringList.h",
            "StringListImpl.h",
            "TextIArchive.h",
            "TextIArchiveImpl.h",
            "TextOArchive.h",
            "TextOArchiveImpl.h",
            "Token.h",
            "TypeID.h",
        ]
    }
    Group {
        name: "CrySerialization / yasli / decorators"
        prefix: "CrySerialization/yasli/decorators/"
        files: [
            "BitFlags.h",
            "BitFlagsImpl.h",
            "Button.h",
            "FileOpen.h",
            "FileOpenImpl.h",
            "FileSave.h",
            "FileSaveImpl.h",
            "HorizontalLine.h",
            "IconXPM.h",
            "Range.h",
        ]
    }
    Group {
        name: "CrySTL"
        prefix: "CrySTL/"
        files: [
            "type_traits.h",
            "utility.h",
        ]
    }
    Group {
        name: "CryString"
        prefix: "CryString/"
        files: [
            "CompileTimeString.h",
            "CryFixedString.h",
            "CryName.h",
            "CryPath.h",
            "CryString.h",
            "CryStringUtils.h",
            "CryWinStringUtils.h",
            "HashedString.h",
            "NameCRCHelper.h",
            "Name_TypeInfo.h",
            "StringUtils.h",
            "UnicodeBinding.h",
            "UnicodeEncoding.h",
            "UnicodeFunctions.h",
            "UnicodeIterator.h",
        ]
    }
    Group {
        name: "CrySystem"
        prefix: "CrySystem/"
        files: [
            "CVarOverride.h",
            "ConsoleRegistration.h",
            "CryUtils.h",
            "CryVersion.h",
            "IBudgetingSystem.h",
            "ICmdLine.h",
            "ICodeCheckpointMgr.h",
            "IConsole.h",
            "ICryLink.h",
            "ICryMiniGUI.h",
            "ICryPlugin.h",
            "ICryPluginManager.h",
            "IEngineModule.h",
            "IImeManager.h",
            "ILocalizationManager.h",
            "ILog.h",
            "IMiniLog.h",
            "IOverloadSceneManager.h",
            "IProcess.h",
            "IProjectManager.h",
            "IResourceCollector.h",
            "IStreamEngine.h",
            "IStreamEngineDefs.h",
            "ISystem.h",
            "ISystemScheduler.h",
            "ITextModeConsole.h",
            "ITimer.h",
            "IValidator.h",
            "IWindowMessageHandler.h",
            "Pipe.h",
            "SystemInitParams.h",
            "TimeValue.h",
            "TimeValue_info.h",
            "Timer.h",
        ]
    }
    Group {
        name: "CrySystem / File"
        prefix: "CrySystem/File/"
        files: [
            "CryBufferedFileReader.h",
            "CryFile.h",
            "IAVI_Reader.h",
            "ICryPak.h",
            "IFileChangeMonitor.h",
            "IResourceManager.h",
            "LineStreamBuffer.h",
        ]
    }
    Group {
        name: "CrySystem / Profilers"
        prefix: "CrySystem/Profilers/"
        files: [
            "CryMemReplay.h",
            "CryMemReplayTrackedPtr.h",
            "ICryProfilingSystem.h",
            "IDiskProfiler.h",
            "ILegacyProfiler.h",
            "IPerfHud.h",
            "IStatoscope.h",
            "SamplerStats.h",
            "SamplesHistory.h",
        ]
    }
    Group {
        name: "CrySystem / Scaleform"
        prefix: "CrySystem/Scaleform/"
        files: [
            "ConfigScaleform.h",
            "ConfigScaleform_impl.h",
            "GMemorySTLAlloc.h",
            "IFlashPlayer.h",
            "IFlashUI.h",
            "IScaleformHelper.h",
            "IUIFramework.h",
        ]
    }
    Group {
        name: "CrySystem / Testing"
        prefix: "CrySystem/Testing/"
        files: [
            "Command.h",
            "CryTest.h",
            "CryTestCommands.h",
            "ITestReporter.h",
            "ITestSystem.h",
            "TestInfo.h",
        ]
    }
    Group {
        name: "CrySystem / VR"
        prefix: "CrySystem/VR/"
        files: [
            "IHMDDevice.h",
            "IHMDManager.h",
        ]
    }
    Group {
        name: "CrySystem / XML"
        prefix: "CrySystem/XML/"
        files: [
            "IReadWriteXMLSink.h",
            "IXml.h",
            "XMLAttrReader.h",
            "XMLBinaryHeaders.h",
        ]
    }
    Group {
        name: "CrySystem / ZLib"
        prefix: "CrySystem/ZLib/"
        files: [
            "ILZ4Decompressor.h",
            "IZLibCompressor.h",
            "IZlibDecompressor.h",
        ]
    }
    Group {
        name: "CryThreading"
        prefix: "CryThreading/"
        files: [
            "CryAtomics.h",
            "CryThread.h",
            "CryThreadImpl.h",
            "CryThreadSafePushContainer.h",
            "CryThread_dummy.h",
            "Debug.h",
            "IJobManager.h",
            "IJobManager_JobDelegator.h",
            "IThreadConfigManager.h",
            "IThreadManager.h",
            "MultiThread_Containers.h",
            "Synchronization.h",
        ]
    }
    Group {
        name: "CrySchematyc"
        prefix: "CrySchematyc/"
        files: [
            "Action.h",
            "Component.h",
            "FundamentalTypes.h",
            "ICore.h",
            "IObject.h",
            "IObjectProperties.h",
            "MathTypes.h",
            "ResourceTypes.h",
        ]
    }
    Group {
        name: "CrySchematyc / Compiler"
        prefix: "CrySchematyc/Compiler/"
        files: [
            "CompilerContext.h",
            "ICompiler.h",
            "IGraphNodeCompiler.h",
        ]
    }
    Group {
        name: "CrySchematyc / Editor"
        prefix: "CrySchematyc/Editor/"
        files: [
            "IQuickSearchOptions.h",
        ]
    }
    Group {
        name: "CrySchematyc / Env"
        prefix: "CrySchematyc/Env/"
        files: [
            "EnvElementBase.h",
            "EnvPackage.h",
            "EnvUtils.h",
            "IEnvElement.h",
            "IEnvPackage.h",
            "IEnvRegistrar.h",
            "IEnvRegistry.h",
        ]
    }
    Group {
        name: "CrySchematyc / Env / Elements"
        prefix: "CrySchematyc/Env/Elements/"
        files: [
            "EnvAction.h",
            "EnvClass.h",
            "EnvComponent.h",
            "EnvDataType.h",
            "EnvFunction.h",
            "EnvInterface.h",
            "EnvModule.h",
            "EnvSignal.h",
            "IEnvAction.h",
            "IEnvClass.h",
            "IEnvComponent.h",
            "IEnvDataType.h",
            "IEnvFunction.h",
            "IEnvInterface.h",
            "IEnvModule.h",
            "IEnvSignal.h",
        ]
    }
    Group {
        name: "CrySchematyc / Network"
        prefix: "CrySchematyc/Network/"
        files: [
            "INetworkObject.h",
            "INetworkSpawnParams.h",
        ]
    }
    Group {
        name: "CrySchematyc / Reflection"
        prefix: "CrySchematyc/Reflection/"
        files: [
            "ActionDesc.h",
            "ComponentDesc.h",
            "DefaultTypeReflection.inl",
            "FunctionDesc.h",
            "ReflectionUtils.h",
            "TypeDesc.h",
            "TypeDesc.inl",
            "TypeOperators.h",
            "TypeOperators.inl",
        ]
    }
    Group {
        name: "CrySchematyc / Runtime"
        prefix: "CrySchematyc/Runtime/"
        files: [
            "IRuntimeClass.h",
            "IRuntimeRegistry.h",
            "RuntimeGraph.h",
            "RuntimeParamMap.h",
            "RuntimeParamMap.inl",
            "RuntimeParams.h",
            "RuntimeParams.inl",
        ]
    }
    Group {
        name: "CrySchematyc / Script"
        prefix: "CrySchematyc/Script/"
        files: [
            "IScript.h",
            "IScriptElement.h",
            "IScriptExtension.h",
            "IScriptGraph.h",
            "IScriptRegistry.h",
            "IScriptView.h",
            "ScriptDependencyEnumerator.h",
            "ScriptUtils.h",
        ]
    }
    Group {
        name: "CrySchematyc / Script / Elements"
        prefix: "CrySchematyc/Script/Elements/"
        files: [
            "IScriptActionInstance.h",
            "IScriptBase.h",
            "IScriptClass.h",
            "IScriptComponentInstance.h",
            "IScriptConstructor.h",
            "IScriptEnum.h",
            "IScriptFunction.h",
            "IScriptInterface.h",
            "IScriptInterfaceFunction.h",
            "IScriptInterfaceImpl.h",
            "IScriptInterfaceTask.h",
            "IScriptModule.h",
            "IScriptRoot.h",
            "IScriptSignal.h",
            "IScriptSignalReceiver.h",
            "IScriptState.h",
            "IScriptStateMachine.h",
            "IScriptStruct.h",
            "IScriptTimer.h",
            "IScriptVariable.h",
        ]
    }
    Group {
        name: "CrySchematyc / SerializationUtils"
        prefix: "CrySchematyc/SerializationUtils/"
        files: [
            "ContainerSerializationUtils.h",
            "ISerializationContext.h",
            "IValidatorArchive.h",
            "MultiPassSerializer.h",
            "SerializationEnums.inl",
            "SerializationQuickSearch.h",
            "SerializationToString.h",
            "SerializationUtils.h",
        ]
    }
    Group {
        name: "CrySchematyc / Services"
        prefix: "CrySchematyc/Services/"
        files: [
            "ILog.h",
            "ILogRecorder.h",
            "ISettingsManager.h",
            "ITimerSystem.h",
            "IUpdateScheduler.h",
            "LogMetaData.h",
            "LogStreamName.h",
        ]
    }
    Group {
        name: "CrySchematyc / Utils"
        prefix: "CrySchematyc/Utils/"
        files: [
            "Any.h",
            "AnyArray.h",
            "Array.h",
            "Assert.h",
            "ClassProperties.h",
            "CryLinkUtils.h",
            "Delegate.h",
            "EnumFlags.h",
            "GUID.h",
            "HybridArray.h",
            "IGUIDRemapper.h",
            "IInterfaceMap.h",
            "IString.h",
            "PreprocessorUtils.h",
            "RingBuffer.h",
            "Rotation.h",
            "STLUtils.h",
            "ScopedConnection.h",
            "Scratchpad.h",
            "SharedString.h",
            "Signal.h",
            "StackString.h",
            "StringHashWrapper.h",
            "StringUtils.h",
            "Transform.h",
            "TypeName.h",
            "TypeUtils.h",
            "UniqueId.h",
            "Validator.h",
        ]
    }
    Group {
        name: "CryUtils"
        prefix: "CryUtils/"
        files: [
            "CompileTime.h",
            "Debug.h",
            "Flags.h",
            "Index.h",
        ]
    }
    Group {
        name: "CryType"
        prefix: "CryType/"
        files: [
            "Type.h",
            "TypeFunctions.h",
            "TypeOperators.h",
            "TypeTraits.h",
            "TypeUtils.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Deprecated"
        prefix: "CrySchematyc2/Deprecated/"
        files: [
            "ActionMemberFunction.h",
            "ComponentMemberFunction.h",
            "DocUtils.h",
            "GlobalFunction.h",
            "IGlobalFunction.h",
            "IStringPool.h",
            "Stack.h",
            "StackIArchive.h",
            "StackOArchive.h",
            "Variant.h",
            "VariantStack.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Env"
        prefix: "CrySchematyc2/Env/"
        files: [
            "EnvFunctionDescriptor.h",
            "EnvTypeId.h",
            "IEnvElement.h",
            "IEnvFunctionDescriptor.h",
            "IEnvRegistry.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Runtime"
        prefix: "CrySchematyc2/Runtime/"
        files: [
            "IRuntime.h",
            "RuntimeParams.h",
            "ScratchPad.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Script"
        prefix: "CrySchematyc2/Script/"
        files: [
            "IScriptElement.h",
            "IScriptExtension.h",
            "IScriptFile.h",
            "IScriptGraph.h",
            "IScriptGraphNodeCompiler.h",
            "IScriptGraphNodeCreationMenu.h",
            "IScriptRegistry.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Script / Elements"
        prefix: "CrySchematyc2/Script/Elements/"
        files: [
            "IScriptFunction.h",
            "IScriptModule.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Serialization"
        prefix: "CrySchematyc2/Serialization/"
        files: [
            "ISerializationContext.h",
            "IValidatorArchive.h",
            "SerializationEnums.inl",
            "SerializationUtils.h",
            "StringOArchive.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Serialization / Resources"
        prefix: "CrySchematyc2/Serialization/Resources/"
        files: [
            "GameResources.h",
            "IGameResourceList.h",
            "IResourceCollectorArchive.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Services"
        prefix: "CrySchematyc2/Services/"
        files: [
            "ILog.h",
            "ITimerSystem.h",
            "IUpdateScheduler.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / TemplateUtils"
        prefix: "CrySchematyc2/TemplateUtils/"
        files: [
            "TemplateUtils_ArrayView.h",
            "TemplateUtils_Delegate.h",
            "TemplateUtils_DelegateImpl.h",
            "TemplateUtils_IntrusiveList.h",
            "TemplateUtils_PreprocessorUtils.h",
            "TemplateUtils_RingBuffer.h",
            "TemplateUtils_ScopedConnection.h",
            "TemplateUtils_Signal.h",
            "TemplateUtils_SignalImpl.h",
            "TemplateUtils_SignalImplv2.h",
            "TemplateUtils_Signalv2.h",
            "TemplateUtils_StringHashWrapper.h",
            "TemplateUtils_TypeUtils.h",
            "TemplateUtils_TypeWrapper.h",
        ]
    }
    Group {
        name: "CrySchematyc2 / Utils"
        prefix: "CrySchematyc2/Utils/"
        files: [
            "CryLinkUtils.h",
            "DefaultInit.h",
            "IString.h",
            "SharedArray.h",
            "SharedString.h",
            "StackString.h",
            "StringUtils.h",
            "ToString.h",
        ]
    }
    Group {
        name: "CrySchematyc2"
        prefix: "CrySchematyc2/"
        files: [
            "AbstractInterfaceUtils.h",
            "ActionFactory.h",
            "AggregateTypeId.h",
            "Any.h",
            "BasicTypes.h",
            "ComponentFactory.h",
            "EnvTypeDesc.h",
            "GUID.h",
            "GUIDRemapper.h",
            "IAbstractInterface.h",
            "IActionFactory.h",
            "IAny.h",
            "ICompiler.h",
            "IComponentFactory.h",
            "IDomainContext.h",
            "IEntityAttributesProxy.h",
            "IEnvTypeDesc.h",
            "IFoundation.h",
            "IFramework.h",
            "ILib.h",
            "ILibRegistry.h",
            "INetworkObject.h",
            "INetworkSpawnParams.h",
            "IObject.h",
            "IObjectManager.h",
            "IProperties.h",
            "IQuickSearchOptions.h",
            "ISignal.h",
            "LibUtils.h",
            "Prerequisites.h",
            "Properties.h",
            "TypeInfo.h",
        ]
    }
    Group {
        name: "CryUDR"
        prefix: "CryUDR/"
        files: [
            "Examples/SpidersExample.cpp",
            "IUDR.h",
            "IUDRSystem.h",
            "InterfaceIncludes.h",
            "Prerequisites.h",
            "client/Scope.h",
            "core/ILogMessageCollection.h",
            "core/INode.h",
            "core/INodeStack.h",
            "core/IRecursiveSyncObject.h",
            "core/IRenderPrimitiveCollection.h",
            "core/ITree.h",
            "core/ITreeListener.h",
            "core/ITreeManager.h",
            "shared/IString.h",
            "shared/ITimeMetadata.h",
            "shared/RecursiveSyncObjectAutoLock.h",
            "shared/String.h",
        ]
    }
    Group {
        name: "CryCore / Platform"
        prefix: "CryCore/Platform/"
        files: [
            "WinBase_posix.inl",
        ]
    }
    Group {
        name: "CryNetwork"
        prefix: "CryNetwork/"
        files: [
            "CrySocks_posix.h",
        ]
    }
    Group {
        name: "CryThreading"
        prefix: "CryThreading/"
        files: [
            "CryAtomics_posix.h",
            "CryThreadImpl_posix.h",
            "CryThread_posix.h",
        ]
    }
    Group {
        name: "CryEntitySystem / Examples"
        prefix: "CryEntitySystem/Examples/"
        files: [
            "ComponentEvents.cpp",
            "FindEntityByName.cpp",
            "GetEntity.cpp",
            "MinimalEntityComponent.cpp",
            "PreviewComponent.cpp",
            "RopeComponent.cpp",
            "SpawnEntity.cpp",
            "TraverseEntities.cpp",
            "TriggerComponent.cpp",
        ]
    }
    Group {
        name: "CryEntitySystem / Examples / Slots"
        prefix: "CryEntitySystem/Examples/"
        files: [
            "LoadCharacter.cpp",
            "LoadFogVolume.cpp",
            "LoadGeomCache.cpp",
            "LoadGeometry.cpp",
            "LoadLight.cpp",
            "LoadParticleEmitter.cpp",
        ]
    }
    Group {
        name: "CryEntitySystem / Examples / Physics"
        prefix: "CryEntitySystem/Examples/"
        files: [
            "MonitorCollisions.cpp",
            "PhysicalizeEntity.cpp",
            "PhysicalizeEntitySlot.cpp",
            "PhysicalizeLiving.cpp",
        ]
    }
    Group {
        name: "CryEntitySystem / Examples / Networking"
        prefix: "CryEntitySystem/Examples/"
        files: [
            "AspectDelegation.cpp",
            "ComponentNetReplicate.cpp",
            "ComponentNetSerialize.cpp",
            "ComponentRemoteMethodInvocation.cpp",
        ]
    }
    Group {
        name: "CryEntitySystem / Examples / Audio"
        prefix: "CryEntitySystem/Examples/Audio/"
        files: [
            "ExecuteTrigger.cpp",
            "SetParameterValue.cpp",
            "SetSwitchState.cpp",
        ]
    }
    Group {
        name: "CryPhysics / Examples"
        prefix: "CryPhysics/Examples/"
        files: [
            "ActionImpulse.cpp",
            "AddConstraint.cpp",
            "GetDynamicsStatus.cpp",
            "GetPhysicalEntityPosition.cpp",
            "GetSimulationParams.cpp",
            "RayWorldIntersection.cpp",
            "SetPhysicalEntityPosition.cpp",
            "SimulateExplosion.cpp",
        ]
    }
    Group {
        name: "CryAnimation / Examples"
        prefix: "CryAnimation/Examples/"
        files: [
            "AimIK.cpp",
            "ControllerAnimationEvents.cpp",
            "CreateActionController.cpp",
            "LookIK.cpp",
            "OperatorQueue.cpp",
            "QueueFragment.cpp",
            "SetDesiredMotionParam.cpp",
            "SetTag.cpp",
            "StartAnimation.cpp",
        ]
    }
    Group {
        name: "CryAction / Examples"
        prefix: "CryAction/Examples/"
        files: [
            "ActionListener.cpp",
            "ReBindActionInput.cpp",
        ]
    }
    Group {
        name: "CryNetwork / Examples"
        prefix: "CryNetwork/Examples/"
        files: [
            "NetworkedClientListener.cpp",
        ]
    }
    Group {
        name: "CrySystem / Examples"
        prefix: "CrySystem/Examples/"
        files: [
            "ConsoleCommand.cpp",
            "ConsoleVariable.cpp",
            "MinimalPlugin.cpp",
        ]
    }
    Group {
        name: "CrySystem / Examples / Filesystem"
        prefix: "CrySystem/Examples/"
        files: [
            "JsonSerialization.cpp",
            "XmlParsing.cpp",
            "XmlWriting.cpp",
        ]
    }
    Group {
        name: "CrySystem / Examples / VirtualReality"
        prefix: "CrySystem/Examples/"
        files: [
            "AsyncHMDCameraCallback.cpp",
        ]
    }
    files: [
        "CryEngine.natvis",
    ]
}
