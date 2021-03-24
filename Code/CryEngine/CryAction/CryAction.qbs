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
        "../../CryPlugins/CryDefaultEntities/Module",
        "../../SDKs",
        "../../SDKs/boost",
        "../CryCommon",
        "../CryCommon/3rdParty",
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
        name: "Action Files"
        files: [
            "ActionFilter.cpp",
            "ActionFilter.h",
            "ActionMap.cpp",
            "ActionMap.h",
            "ActionMapManager.cpp",
            "ActionMapManager.h",
            "ScriptBind_ActionMapManager.cpp",
            "ScriptBind_ActionMapManager.h",
        ]
    }
    Group {
        name: "Actor Files"
        files: [
            "ActorSystem.cpp",
            "ScriptBind_ActorSystem.cpp",
            "ActorSystem.h",
            "ScriptBind_ActorSystem.h",
        ]
    }
    Group {
        name: "AI Files"
        files: [
            "AI/BehaviorTreeNodes_Action.h",
            "AI/BehaviorTreeNodes_Action.cpp",
            "AIDebugRenderer.h",
            "AIDebugRenderer.cpp",
        ]
    }
    Group {
        name: "Animation"
        files: [
            "WrinkleMapRenderProxyCallback.cpp",
            "WrinkleMapRenderProxyCallback.h"
        ]
    }
    Group {
        name: "Animation / PoseAligner"
        prefix: "Animation/PoseAligner/"
        files: [
            "PoseAligner.cpp",
            "PoseAligner.h",
            "PoseAlignerC3.cpp",
        ]
    }
    Group {
        name: "Animation / PoseModifier"
        prefix: "Animation/PoseModifier/"
        files: [
            "IKTorsoAim.cpp",
            "IKTorsoAim.h",
            "LookAtSimple.cpp",
            "LookAtSimple.h",
        ]
    }
    Group {
        name: "AnimationGraph / Game Object"
        prefix: "AnimationGraph/"
        files: [
            "AnimatedCharacter.cpp",
            "AnimatedCharacter.h",
            "AnimatedCharacterEventProxies.cpp",
            "AnimatedCharacterEventProxies.h",
            "AnimatedCharacterPPS.cpp",
            "AnimatedCharacterPPS_Common.cpp",
            "AnimatedCharacterPPS_Debug.cpp",
            "AnimatedCharacterPPS_ParamCalculation.cpp",
            "DebugHistory.cpp",
            "DebugHistory.h",
        ]
    }
    Group {
        name: "AnimationGraph / System files"
        prefix: "AnimationGraph/"
        files: [
            "AnimationGraphCVars.cpp",
            "AnimationGraphCVars.h",
            "AnimationTrigger.cpp",
            "AnimationTrigger.h",
        ]
    }
    Group {
        name: "CheckPoint"
        prefix: "CheckPoint/"
        files: [
            "CheckPointSystem.cpp",
            "CheckPointSystem.h",
        ]
    }
    Group {
        name: "CooperativeAnimationManager"
        prefix: "CooperativeAnimationManager/"
        files: [
            "CooperativeAnimation.cpp",
            "CooperativeAnimation.h",
            "CooperativeAnimationManager.cpp",
            "CooperativeAnimationManager.h",
        ]
    }
    Group {
        name: "CustomActions"
        prefix: "CustomActions/"
        files: [
            "CustomAction.cpp",
            "CustomAction.h",
            "CustomActionManager.cpp",
            "CustomActionManager.h",
        ]
    }
    Group {
        name: "CustomEvents"
        prefix: "CustomEvents/"
        files: [
            "CustomEventsManager.cpp",
            "CustomEventsManager.h",
        ]
    }
    Group {
        name: "Debug Helpers"
        files: [
            "EntityTags.cpp",
            "PersistantDebug.cpp",
            "PersistantDebug.h",
        ]
    }
    Group {
        name: "EffectSystem"
        prefix: "EffectSystem/"
        files: [
            "BloodSplats.cpp",
            "BloodSplats.h",
            "Effect.cpp",
            "Effect.h",
            "EffectSystem.cpp",
            "EffectSystem.h",
            "GroundEffect.cpp",
            "GroundEffect.h",
        ]
    }
    Group {
        name: "EntityContainers"
        prefix: "EntityContainers/"
        files: [
            "EntityContainer.cpp",
            "EntityContainer.h",
            "EntityContainerMgr.cpp",
            "EntityContainerMgr.h",
            "EntityContainerObject.cpp",
            "EntityContainerObject.h",
            "FlowEntityContainerNodes.cpp",
            "IEntityContainerListener.h",
        ]
    }
    Group {
        name: "FlashUI"
        prefix: "FlashUI/"
        files: [
            "FlashUI.cpp",
            "FlashUI.h",
            "FlashUIAction.cpp",
            "FlashUIAction.h",
            "FlashUIActionEvents.cpp",
            "FlashUIActionEvents.h",
            "FlashUIActionNodes.cpp",
            "FlashUIActionNodes.h",
            "FlashUIArrayNodes.cpp",
            "FlashUIArrayNodes.h",
            "FlashUIBaseNode.cpp",
            "FlashUIBaseNode.h",
            "FlashUIDisplayNodes.cpp",
            "FlashUIDisplayNodes.h",
            "FlashUIElement.cpp",
            "FlashUIElement.h",
            "FlashUIElementNodes.cpp",
            "FlashUIElementNodes.h",
            "FlashUIEventNodes.cpp",
            "FlashUIEventNodes.h",
            "FlashUIEventSystem.cpp",
            "FlashUIEventSystem.h",
            "FlashUIFlowNodeFactory.h",
            "FlashUIUtilNodes.cpp",
            "FlashUIUtilNodes.h",
            "ScriptBind_UIAction.cpp",
            "ScriptBind_UIAction.h",
        ]
    }
    Group {
        name: "FlowSystem / Nodes"
        prefix: "FlowSystem/Nodes/"
        files: [
            "FlowEngineCustomNodes.cpp",
            "FlowEntityCustomNodes.h",
            "FlowEntityCustomNodes.cpp",
            "FlowGameNodes.cpp",
            "FlowWeaponNodes.cpp",
            "FlowInventoryNodes.cpp",
            "FlowOnlineStatsNodes.cpp",
        ]
    }
    Group {
        name: "Force Feedback System"
        prefix: "ForceFeedbackSystem/"
        files: [
            "ForceFeedbackSystem.cpp",
            "ForceFeedbackSystem.h",
        ]
    }
    Group {
        name: "GameObjects"
        prefix: "GameObjects/"
        files: [
            "GameObject.cpp",
            "GameObject.h",
            "GameObjectDispatch.cpp",
            "GameObjectDispatch.h",
            "GameObjectSystem.cpp",
            "GameObjectSystem.h",
            "GameObjectSystem_FactoryRegistration.cpp",
            "Interactor.cpp",
            "Interactor.h",
            "MannequinObject.cpp",
            "MannequinObject.h",
            "RuntimeAreaObject.cpp",
            "RuntimeAreaObject.h",
            "WorldQuery.cpp",
            "WorldQuery.h",
        ]
    }
    Group {
        name: "GameplayRecorder"
        prefix: "GameplayRecorder/"
        files: [
            "GameplayRecorder.cpp",
            "GameplayRecorder.h",
        ]
    }
    Group {
        name: "GameplayRecorder / Gameplay Analyst"
        files: [
            "Analyst.cpp",
            "Analyst.h",
        ]
    }
    Group {
        name: "GameplayRuels"
        files: [
            "GameRulesSystem.cpp",
            "GameRulesSystem.h",
        ]
    }
    Group {
        name: "GameSession"
        prefix: "GameSession/"
        files: [
            "GameSessionHandler.cpp",
            "GameSessionHandler.h",
        ]
    }
    Group {
        name: "GameVolumes"
        prefix: "GameVolumes/"
        files: [
            "GameVolumesManager.cpp",
            "GameVolumesManager.h",
        ]
    }
    Group {
        name: "Graphics"
        files: [
            "ColorGradientManager.cpp",
        ]
    }
    Group {
        name: "Interfaces"
        files: [
            "IActionMapManager.h",
            "IActorSystem.h",
            "IAnimatedCharacter.h",
            "IAnimationGraph.h",
            "ICheckPointSystem.h",
            "ICooperativeAnimationManager.h",
            "ICryMannequin.h",
            "ICryMannequinDefs.h",
            "ICryMannequinEditor.h",
            "ICryMannequinProceduralClipFactory.h",
            "ICryMannequinTagDefs.h",
            "ICryMannequinUserParams.h",
            "IForceFeedbackSystem.h",
            "IGameObject.h",
            "IGameObjectSystem.h",
            "IGameRulesSystem.h",
            "IGameSessionHandler.h",
            "IGameplayRecorder.h",
            "IInteractor.h",
            "IItem.h",
            "IItemSystem.h",
            "ILevelSystem.h",
            "ILoadGame.h",
            "IMetadataRecorder.h",
            "IMovementController.h",
            "IPlayerProfiles.h",
            "IRangeSignaling.h",
            "ISaveGame.h",
            "ISharedParamsManager.h",
            "ISubtitleManager.h",
            "IUIDraw.h",
            "IVehicleSystem.h",
            "IViewSystem.h",
            "IWeapon.h",
            "IWorldQuery.h",
        ]
    }
    Group {
        name: "Item Files"
        files: [
            "EquipmentManager.cpp",
            "EquipmentManager.h",
            "Inventory.cpp",
            "Inventory.h",
            "ItemParams.cpp",
            "ItemParams.h",
            "ItemSystem.cpp",
            "ItemSystem.h",
            "ScriptBind_Inventory.cpp",
            "ScriptBind_Inventory.h",
            "ScriptBind_ItemSystem.cpp",
            "ScriptBind_ItemSystem.h",
        ]
    }
    Group {
        name: "Level Files"
        files: [
            "LevelSystem.cpp",
            "LevelSystem.h",
        ]
    }
    Group {
        name: "LipSync"
        prefix: "LipSync/"
        files: [
            "LipSync_FacialInstance.cpp",
            "LipSync_FacialInstance.h",
            "LipSync_TransitionQueue.cpp",
            "LipSync_TransitionQueue.h",
        ]
    }
    Group {
        name: "LivePreview"
        prefix: "LivePreview/"
        files: [
            "RealtimeRemoteUpdate.cpp",
            "RealtimeRemoteUpdate.h",
        ]
    }
    Group {
        name: "Mannequin"
        prefix: "Mannequin/"
        files: [
            "ActionController.cpp",
            "ActionController.h",
            "ActionScope.cpp",
            "ActionScope.h",
            "AnimationDatabase.cpp",
            "AnimationDatabase.h",
            "AnimationDatabaseManager.cpp",
            "AnimationDatabaseManager.h",
            "FlowMannequinNodes.cpp",
            "MannequinDebug.cpp",
            "MannequinDebug.h",
            "MannequinInterface.cpp",
            "MannequinInterface.h",
            "MannequinUtils.cpp",
            "MannequinUtils.h",
            "ProceduralClipConversion.cpp",
            "ProceduralClipConversion.h",
            "ProceduralClipFactory.cpp",
            "ProceduralClipFactory.h",
            "ProceduralClipsPositioning.h",
            "ProceduralParamsComparer.cpp",
            "Serialization.h",
            "Tests/Test_CRCRef.cpp",
            "Tests/Test_ProceduralParams.cpp",
        ]
    }
    Group {
        name: "Mannequin / Experimental"
        prefix: "Mannequin/"
        files: [
            "AnimActionTriState.cpp",
            "AnimActionTriState.h",
        ]
    }
    Group {
        name: "Mannequin / MannequinAG"
        prefix: "Mannequin/"
        files: [
            "MannequinAGDefs.h",
            "MannequinAGExistanceQuery.cpp",
            "MannequinAGExistanceQuery.h",
            "MannequinAGState.cpp",
            "MannequinAGState.h",
        ]
    }
    Group {
        name: "Mannequin / ProceduralClips"
        prefix: "Mannequin/"
        files: [
            "FirstPersonHandIKContext.cpp",
            "FirstPersonHandIKContext.h",
            "ProceduralClipAISignal.cpp",
            "ProceduralClipAimAround.cpp",
            "ProceduralClipAimPose.cpp",
            "ProceduralClipAnimManipulation.cpp",
            "ProceduralClipEvent.cpp",
            "ProceduralClipForceFeedback.cpp",
            "ProceduralClipLookAround.cpp",
            "ProceduralClipLookPose.cpp",
            "ProceduralClipParams.cpp",
            "ProceduralClipParticleEffect.cpp",
            "ProceduralClipPlaySound.cpp",
            "ProceduralClipProps.cpp",
            "ProceduralClipsPositioning.cpp",
        ]
    }
    Group {
        name: "Mannequin / Xml"
        prefix: "Mannequin/Xml/"
        files: [
            "TagDefinitionXml.cpp",
            "TagDefinitionXml.h",
        ]
    }
    Group {
        name: "MaterialEffects"
        prefix: "MaterialEffects/"
        files: [
            "MaterialEffectsCVars.cpp",
            "MaterialEffectsCVars.h",
            "MaterialEffects.cpp",
            "MaterialEffects.h",
        ]
    }
    Group {
        name: "MaterialEffects / Effects"
        prefix: "MaterialEffects/"
        files: [
            "IMFXEffect.h",
            "MFXAudioEffect.cpp",
            "MFXAudioEffect.h",
            "MFXDecalEffect.cpp",
            "MFXDecalEffect.h",
            "MFXEffectBase.cpp",
            "MFXEffectBase.h",
            "MFXFlowGraphEffect.cpp",
            "MFXFlowGraphEffect.h",
            "MFXForceFeedbackFX.cpp",
            "MFXForceFeedbackFX.h",
            "MFXParticleEffect.cpp",
            "MFXParticleEffect.h",
            "MFXRandomEffect.cpp",
            "MFXRandomEffect.h",
        ]
    }
    Group {
        name: "MaterialEffects / Subcomponents"
        prefix: "MaterialEffects/"
        files: [
            "MFXContainer.cpp",
            "MFXContainer.h",
            "MFXLibrary.cpp",
            "MFXLibrary.h",
            "MaterialFGManager.cpp",
            "MaterialFGManager.h",
            "MaterialHUDFXNodes.cpp",
            "ScriptBind_MaterialEffects.cpp",
            "ScriptBind_MaterialEffects.h",
        ]
    }
    Group {
        name: "MaterialEffects / Utils"
        prefix: "MaterialEffects/"
        files: [
            "MaterialEffectsDebug.cpp",
            "MaterialEffectsDebug.h",
            "SurfacesLookupTable.h",
        ]
    }
    Group {
        name: "MetadataRecorder"
        files: [
            "MetadataRecorder/MetadataRecorder.cpp"
        ]
    }
    Group {
        name: "Network"
        prefix: "Network/"
        files: [
            "CVarListProcessor.cpp",
            "CVarListProcessor.h",
            "DebugBreakage.h",
            "NetDebug.cpp",
            "NetDebug.h",
            "NetworkCVars.cpp",
            "NetworkCVars.h",
            "NetworkStallTicker.cpp",
            "NetworkStallTicker.h",
            "SerializeBits.h",
            "SerializeDirHelper.h",
        ]
    }
    Group {
        name: "Network / Breakability"
        prefix: "Network/"
        files: [
            "BreakReplicator.cpp",
            "BreakReplicator_Simple.cpp",
            "DeformingBreak.cpp",
            "ExplosiveObjectState.cpp",
            "GenericPlaybackListener.cpp",
            "GenericRecordingListener.cpp",
            "JointBreak.cpp",
            "PlaneBreak.cpp",
            "ProceduralBreak.cpp",
            "ProceduralBreakingBaseListener.cpp",
            "ProceduralBreakingPlaybackListener.cpp",
            "ProceduralBreakingRecordingListener.cpp",
            "SimulateRemoveEntityParts.cpp",
            "BreakReplicator.h",
            "BreakReplicator_Simple.h",
            "BreakReplicatorGameObject.h",
            "DeformingBreak.h",
            "ExplosiveObjectState.h",
            "GenericPlaybackListener.h",
            "GenericRecordingListener.h",
            "IBreakPlaybackStream.h",
            "IBreakReplicatorListener.h",
            "IContextEstablishTask.h",
            "IProceduralBreakType.h",
            "JointBreak.h",
            "NullListener.h",
            "NullStream.h",
            "PlaneBreak.h",
            "ProceduralBreak.h",
            "ProceduralBreakingBaseListener.h",
            "ProceduralBreakingPlaybackListener.h",
            "ProceduralBreakingRecordingListener.h",
            "SimulateCreateEntityPart.h",
            "SimulateRemoveEntityParts.h",
        ]
    }
    Group {
        name: "Network / Context Establishment Tasks"
        prefix: "Network/"
        files: [
            "CET_CVars.cpp",
            "CET_CVars.h",
            "CET_ClassRegistry.cpp",
            "CET_ClassRegistry.h",
            "CET_ClientConnections.cpp",
            "CET_ClientConnections.h",
            "CET_EntitySystem.cpp",
            "CET_EntitySystem.h",
            "CET_GameRules.cpp",
            "CET_GameRules.h",
            "CET_LevelLoading.cpp",
            "CET_LevelLoading.h",
            "CET_NetConfig.cpp",
            "CET_NetConfig.h",
        ]
    }
    Group {
        name: "Network / Core"
        prefix: "Network/"
        files: [
            "ClassRegistryReplicator.cpp",
            "ClassRegistryReplicator.h",
            "GameChannel.cpp",
            "GameChannel.h",
            "GameClientChannel.cpp",
            "GameClientChannel.h",
            "GameClientNub.cpp",
            "GameClientNub.h",
            "GameContext.cpp",
            "GameContext.h",
            "GameContext_RegisterExtensions.cpp",
            "GameQueryListener.cpp",
            "GameQueryListener.h",
            "GameServerChannel.cpp",
            "GameServerChannel.h",
            "GameServerNub.cpp",
            "GameServerNub.h",
            "NetMsgDispatcher.cpp",
            "NetMsgDispatcher.h",
            "PhysicsSync.cpp",
            "PhysicsSync.h",
            "ScriptBind_Network.cpp",
            "ScriptBind_Network.h",
            "ScriptRMI.cpp",
            "ScriptRMI.h",
            "ScriptSerialize.cpp",
            "ScriptSerialize.h",
            "ServerTimer.cpp",
            "ServerTimer.h",
        ]
    }
    Group {
        name: "Network / FlowNodes"
        prefix: "Network/"
        files: [
            "FlowNetMsgNodes.cpp"
        ]
    }
    Group {
        name: "Network / GameSpy"
        prefix: "Network/"
        files: [
            "GameStats.cpp",
            "GameStats.h",
            "GameStatsConfig.cpp",
            "GameStatsConfig.h",
        ]
    }
    Group {
        name: "Network / Helpers"
        prefix: "Network/"
        files: [
            "NetActionSync.h",
            "ObjectSelector.cpp",
            "ObjectSelector.h",
        ]
    }
    Group {
        name: "Network / Voice"
        prefix: "Network/"
        files: [
            "VoiceController.cpp",
            "VoiceController.h",
            "VoiceListener.cpp",
            "VoiceListener.h",
        ]
    }
    Group {
        name: "Physics Helpers"
        files: [
            "BreakableGlassSystem.cpp",
            "BreakableGlassSystem.h",
            "DelayedPlaneBreak.cpp",
            "DelayedPlaneBreak.h",
        ]
    }
    Group {
        name: "PlayerProfiles"
        prefix: "PlayerProfiles/"
        files: [
            "BMPHelper.cpp",
            "BMPHelper.h",
            "PlayerProfile.cpp",
            "PlayerProfile.h",
            "PlayerProfileImplConsole.cpp",
            "PlayerProfileImplConsole.h",
//            "PlayerProfileImplDurango.cpp",
//            "PlayerProfileImplDurango.h",
            "PlayerProfileImplFS.cpp",
            "PlayerProfileImplFS.h",
            "PlayerProfileImplNoSave.h",
//            "PlayerProfileImplOrbis.cpp",
//            "PlayerProfileImplOrbis.h",
            "PlayerProfileImplRSFHelper.cpp",
            "PlayerProfileImplRSFHelper.h",
            "PlayerProfileManager.cpp",
            "PlayerProfileManager.h",
            "RichSaveGameTypes.h",
            "RichSaveGameTypes_info.h",
        ]
    }
    Group {
        name: "RemoteControl"
        prefix: "RemoteControl/"
        files: [
            "RConClientListener.cpp",
            "RConClientListener.h",
            "RConServerListener.cpp",
            "RConServerListener.h",
        ]
    }
    Group {
        name: "Serialization"
        prefix: "Serialization/"
        files: [
            "GameSerialize.cpp",
            "GameSerialize_FactoryRegistration.cpp",
            "GameSerialize.h",
            "GameSerializeHelpers.h",
            ]
    }
    Group {
        name: "Serialization / Binary Save Games"
        prefix: "Serialization/XMLCPBin/"
        files: [
            "BinarySerializeHelper.cpp",
            "BinarySerializeHelper.h",
        ]
    }
    Group {
        name: "Serialization / Binary Save Games / XMLCPBin"
        prefix: "Serialization/"
        files: [
            "SerializeReaderXMLCPBin.cpp",
            "SerializeWriterXMLCPBin.cpp",
            "XMLCPBin/XMLCPB_Common.cpp",
            "XMLCPBin/XMLCPB_Utils.cpp",
            "SerializeReaderXMLCPBin.h",
            "SerializeWriterXMLCPBin.h",
            "XMLCPBin/XMLCPB_Common.h",
            "XMLCPBin/XMLCPB_Utils.h",
        ]
    }
    Group {
        name: "Serialization / Binary Save Games / XMLCPBin / Reader"
        prefix: "Serialization/XMLCPBin/Reader/"
        files: [
            "XMLCPB_AttrReader.cpp",
            "XMLCPB_AttrSetTableReader.cpp",
            "XMLCPB_BufferReader.cpp",
            "XMLCPB_NodeLiveReader.cpp",
            "XMLCPB_Reader.cpp",
            "XMLCPB_StringTableReader.cpp",
            "XMLCPB_AttrReader.h",
            "XMLCPB_AttrSetTableReader.h",
            "XMLCPB_BufferReader.h",
            "XMLCPB_NodeLiveReader.h",
            "XMLCPB_Reader.h",
            "XMLCPB_ReaderInterface.h",
            "XMLCPB_StringTableReader.h",
        ]
    }
    Group {
        name: "Serialization / Binary Save Games / XMLCPBin / Writer"
        prefix: "Serialization/XMLCPBin/Writer/"
        files: [
            "XMLCPB_AttrSetTableWriter.cpp",
            "XMLCPB_AttrWriter.cpp",
            "XMLCPB_BufferWriter.cpp",
            "XMLCPB_NodeLiveWriter.cpp",
            "XMLCPB_StringTableWriter.cpp",
            "XMLCPB_Writer.cpp",
            "XMLCPB_ZLibCompressor.cpp",
            "XMLCPB_AttrSetTableWriter.h",
            "XMLCPB_AttrWriter.h",
            "XMLCPB_BufferWriter.h",
            "XMLCPB_NodeLiveWriter.h",
            "XMLCPB_StringTableWriter.h",
            "XMLCPB_Writer.h",
            "XMLCPB_WriterInterface.h",
            "XMLCPB_ZLibCompressor.h",
        ]
    }
    Group {
        name: "Serialization / Script XML Helpers"
        prefix: "Serialization/"
        files: [
            "XMLScriptLoader.cpp",
            "XMLScriptLoader.h",
        ]
    }
    Group {
        name: "Serialization / Serialize to script"
        prefix: "Serialization/"
        files: [
            "SerializeScriptTableReader.cpp",
            "SerializeScriptTableWriter.cpp",
            "SerializeScriptTableReader.h",
            "SerializeScriptTableWriter.h",
        ]
    }
    Group {
        name: "Serialization / XML Save Games"
        prefix: "Serialization/"
        files: [
            "XmlLoadGame.cpp",
            "XmlSaveGame.cpp",
            "XmlSerializeHelper.cpp",
            "XmlLoadGame.h",
            "XmlSaveGame.h",
            "XmlSerializeHelper.h"
        ]
    }
    Group {
        name: "SharedParams"
        prefix: "SharedParams/"
        files: [
            "ISharedParams.h",
            "SharedParamsManager.cpp",
            "SharedParamsManager.h",
            "SharedParamsTypeInfo.h",
        ]
    }
    Group {
        name: "SimpleHttpServer"
        prefix: "SimpleHttpServer/"
        files: [
            "SimpleHttpServerListener.cpp",
            "SimpleHttpServerListener.h",
            "SimpleHttpServerWebsocketEchoListener.cpp",
            "SimpleHttpServerWebsocketEchoListener.h",
        ]
    }
    Group {
        name: "Statistics"
        prefix: "Statistics/"
        files: [
            "GameStatistics.cpp",
            "GameStatistics.h",
            "ScriptBind_GameStatistics.cpp",
            "ScriptBind_GameStatistics.h",
            "StatisticsHelpers.cpp",
            "StatisticsHelpers.h",
            "StatsSizer.cpp",
            "StatsSizer.h",
        ]
    }
    Group {
        name: "Test System"
        prefix: "TestSystem/"
        files: [
            "TimeDemoRecorder.cpp",
            "IGameStateRecorder.h",
            "ITestModule.h",
            "TimeDemoRecorder.h",
        ]
    }
    Group {
        name: "UIDraw"
        prefix: "UIDraw/"
        files: [
            "UIDraw.cpp",
            "UIDraw.h",
        ]
    }
    Group {
        name: "Vehicle Files"
        files: [
            "ScriptBind_VehicleSystem.cpp",
            "ScriptBind_VehicleSystem.h",
            "VehicleSystem.cpp",
            "VehicleSystem.h",
            "VehicleSystem/VehicleCVars.cpp",
            "VehicleSystem/VehicleCVars.h",
            "VehicleSystem/VehicleModificationParams.cpp",
            "VehicleSystem/VehicleModificationParams.h",
            "VehicleSystem/VehicleParams.h",
        ]
    }
    Group {
        name: "Vehicle Files / Actions"
        prefix: "VehicleSystem/"
        files: [
            "VehicleUsableActionEnter.cpp",
            "VehicleUsableActionEnter.h",
            "VehicleUsableActionFlip.cpp",
            "VehicleUsableActionFlip.h",
        ]
    }
    Group {
        name: "Vehicle Files / Animation"
        prefix: "VehicleSystem/"
        files: [
            "Animation/VehicleAnimationComponent.cpp",
            "Animation/VehicleAnimationComponent.h",
            "Animation/VehicleSeatAnimActions.cpp",
            "Animation/VehicleSeatAnimActions.h",
        ]
    }
    Group {
        name: "Vehicle Files / Damages"
        prefix: "VehicleSystem/"
        files: [
            "VehicleDamages.cpp",
            "VehicleDamages.h",
            "VehicleDamagesGroup.cpp",
            "VehicleDamagesGroup.h",
            "VehicleDamagesTemplateRegistry.cpp",
            "VehicleDamagesTemplateRegistry.h",
        ]
    }
    Group {
        name: "Vehicle Files / Damages / Damage Behaviors"
        prefix: "VehicleSystem/"
        files: [
            "VehicleDamageBehaviorAISignal.cpp",
            "VehicleDamageBehaviorAISignal.h",
            "VehicleDamageBehaviorDestroy.cpp",
            "VehicleDamageBehaviorDestroy.h",
            "VehicleDamageBehaviorDetachPart.cpp",
            "VehicleDamageBehaviorDetachPart.h",
            "VehicleDamageBehaviorDisableSeatAction.cpp",
            "VehicleDamageBehaviorDisableSeatAction.h",
            "VehicleDamageBehaviorEffect.cpp",
            "VehicleDamageBehaviorEffect.h",
            "VehicleDamageBehaviorGroup.cpp",
            "VehicleDamageBehaviorGroup.h",
            "VehicleDamageBehaviorHitPassenger.cpp",
            "VehicleDamageBehaviorHitPassenger.h",
            "VehicleDamageBehaviorImpulse.cpp",
            "VehicleDamageBehaviorImpulse.h",
            "VehicleDamageBehaviorIndicator.cpp",
            "VehicleDamageBehaviorIndicator.h",
            "VehicleDamageBehaviorMovementNotification.cpp",
            "VehicleDamageBehaviorMovementNotification.h",
            "VehicleDamageBehaviorSink.cpp",
            "VehicleDamageBehaviorSink.h",
            "VehicleDamageBehaviorSpawnDebris.cpp",
            "VehicleDamageBehaviorSpawnDebris.h",
        ]
    }
    Group {
        name: "Vehicle Files / FlowNodes"
        prefix: "VehicleSystem/"
        files: [
            "FlowNodes/FlowNodeAIHelicopter.cpp",
            "FlowNodes/FlowNodesAIActionSequence.cpp",
            "FlowNodes/FlowVehicleAI.cpp",
            "FlowNodes/FlowVehicleAttachment.cpp",
            "FlowNodes/FlowVehicleAttachment.h",
            "FlowNodes/FlowVehicleBase.cpp",
            "FlowNodes/FlowVehicleBase.h",
            "FlowNodes/FlowVehicleCamera.cpp",
            "FlowNodes/FlowVehicleDamage.cpp",
            "FlowNodes/FlowVehicleDamage.h",
            "FlowNodes/FlowVehicleHandbrake.cpp",
            "FlowNodes/FlowVehicleHandbrake.h",
            "FlowNodes/FlowVehicleHorn.cpp",
            "FlowNodes/FlowVehicleLights.cpp",
            "FlowNodes/FlowVehicleLights.h",
            "FlowNodes/FlowVehicleMoveActionMult.cpp",
            "FlowNodes/FlowVehicleMoveActionMult.h",
            "FlowNodes/FlowVehicleMovement.cpp",
            "FlowNodes/FlowVehicleMovement.h",
            "FlowNodes/FlowVehiclePassenger.cpp",
            "FlowNodes/FlowVehiclePassenger.h",
            "FlowNodes/FlowVehicleSeat.cpp",
            "FlowNodes/FlowVehicleSeat.h",
            "FlowNodes/FlowVehicleTurret.cpp",
            "FlowNodes/FlowVehicleTurret.h",
        ]
    }
    Group {
        name: "Vehicle Files / Main"
        prefix: "VehicleSystem/"
        files: [
            "Vehicle.cpp",
            "Vehicle.h",
            "VehicleAnimation.cpp",
            "VehicleAnimation.h",
            "VehicleComponent.cpp",
            "VehicleComponent.h",
            "VehicleHelper.cpp",
            "VehicleHelper.h",
            "VehicleSeat.cpp",
            "VehicleSeat.h",
            "VehicleSeatGroup.cpp",
            "VehicleSeatGroup.h",
            "VehicleSystem_FactoryRegistration.cpp",
            "VehicleUtils.cpp",
            "VehicleUtils.h",
        ]
    }
    Group {
        name: "Vehicle Files / Network"
        prefix: "VehicleSystem/"
        files: [
            "VehicleSeatSerializer.cpp",
            "VehicleSeatSerializer.h",
        ]
    }
    Group {
        name: "Vehicle Files / Parts"
        prefix: "VehicleSystem/"
        files: [
            "VehiclePartAnimated.cpp",
            "VehiclePartAnimated.h",
            "VehiclePartAnimatedChar.cpp",
            "VehiclePartAnimatedChar.h",
            "VehiclePartAnimatedJoint.cpp",
            "VehiclePartAnimatedJoint.h",
            "VehiclePartAttachment.cpp",
            "VehiclePartAttachment.h",
            "VehiclePartBase.cpp",
            "VehiclePartBase.h",
            "VehiclePartDetachedEntity.cpp",
            "VehiclePartDetachedEntity.h",
            "VehiclePartEntity.cpp",
            "VehiclePartEntity.h",
            "VehiclePartEntityDelayedDetach.cpp",
            "VehiclePartEntityDelayedDetach.h",
            "VehiclePartLight.cpp",
            "VehiclePartLight.h",
            "VehiclePartMassBox.cpp",
            "VehiclePartMassBox.h",
            "VehiclePartParticleEffect.cpp",
            "VehiclePartParticleEffect.h",
            "VehiclePartPulsingLight.cpp",
            "VehiclePartPulsingLight.h",
            "VehiclePartStatic.cpp",
            "VehiclePartStatic.h",
            "VehiclePartSubPart.cpp",
            "VehiclePartSubPart.h",
            "VehiclePartSubPartWheel.cpp",
            "VehiclePartSubPartWheel.h",
            "VehiclePartSuspensionPart.cpp",
            "VehiclePartSuspensionPart.h",
            "VehiclePartTread.cpp",
            "VehiclePartTread.h",
            "VehiclePartWaterRipplesGenerator.cpp",
            "VehiclePartWaterRipplesGenerator.h",
        ]
    }
    Group {
        name: "Vehicle Files / Script"
        prefix: "VehicleSystem/"
        files: [
            "ScriptBind_Vehicle.cpp",
            "ScriptBind_Vehicle.h",
            "ScriptBind_VehicleSeat.cpp",
            "ScriptBind_VehicleSeat.h",
        ]
    }
    Group {
        name: "Vehicle Files / Seat Actions"
        prefix: "VehicleSystem/"
        files: [
            "VehicleNoiseGenerator.h",
            "VehicleSeatActionAnimation.cpp",
            "VehicleSeatActionAnimation.h",
            "VehicleSeatActionLights.cpp",
            "VehicleSeatActionLights.h",
            "VehicleSeatActionMovement.cpp",
            "VehicleSeatActionMovement.h",
            "VehicleSeatActionOrientateBoneToView.cpp",
            "VehicleSeatActionOrientateBoneToView.h",
            "VehicleSeatActionOrientatePartToView.cpp",
            "VehicleSeatActionOrientatePartToView.h",
            "VehicleSeatActionPassengerIK.cpp",
            "VehicleSeatActionPassengerIK.h",
            "VehicleSeatActionPassiveAnimation.cpp",
            "VehicleSeatActionPassiveAnimation.h",
            "VehicleSeatActionRotateBone.cpp",
            "VehicleSeatActionRotateBone.h",
            "VehicleSeatActionRotateTurret.cpp",
            "VehicleSeatActionRotateTurret.h",
            "VehicleSeatActionShakeParts.cpp",
            "VehicleSeatActionShakeParts.h",
            "VehicleSeatActionSteeringWheel.cpp",
            "VehicleSeatActionSteeringWheel.h",
            "VehicleSeatActionWeapons.cpp",
            "VehicleSeatActionWeapons.h",
            "VehicleSeatActionWeaponsBone.cpp",
            "VehicleSeatActionWeaponsBone.h",
        ]
    }
    Group {
        name: "Vehicle Files / Views"
        prefix: "VehicleSystem/"
        files: [
            "VehicleViewActionThirdPerson.cpp",
            "VehicleViewActionThirdPerson.h",
            "VehicleViewBase.cpp",
            "VehicleViewBase.h",
            "VehicleViewFirstPerson.cpp",
            "VehicleViewFirstPerson.h",
            "VehicleViewSteer.cpp",
            "VehicleViewSteer.h",
            "VehicleViewThirdPerson.cpp",
            "VehicleViewThirdPerson.h",
        ]
    }
    Group {
        name: "ViewSystem"
        prefix: "ViewSystem/"
        files: [
            "ViewSystem.cpp",
            "View.cpp",
            "View.h",
            "ViewSystem.h",
        ]
    }
    files: [
        "ActionGame.cpp",
        "ActionGame.h",
        "CallbackTimer.cpp",
        "CallbackTimer.h",
        "CompositeData.h",
        "CryAction.cpp",
        "CryAction.h",
        "CryActionCVars.cpp",
        "CryActionCVars.h",
        "CryActionPhysicQueues.h",
        "CryAction_RMI.cpp",
        "DevMode.cpp",
        "DevMode.h",
        "GameXmlParamReader.h",
        "IEffectSystem.h",
        "Main.cpp",
        "RuntimeAreas.cpp",
        "RuntimeAreas.h",
        "ScriptBind_Action.cpp",
        "ScriptBind_Action.h",
        "TimeOfDayScheduler.cpp",
        "TimeOfDayScheduler.h",
        "resource.h",
    ]
}
