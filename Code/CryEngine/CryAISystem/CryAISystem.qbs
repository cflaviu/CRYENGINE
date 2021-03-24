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
          name: "AIObject"
          files: [
                "AIActor.cpp",
                "AIActor.h",
                "AIEntityComponent.cpp",
                "AIEntityComponent.h",
                "AIFlyingVehicle.cpp",
                "AIFlyingVehicle.h",
                "AIObject.cpp",
                "AIObject.h",
                "AIPlayer.cpp",
                "AIPlayer.h",
                "AIVehicle.cpp",
                "AIVehicle.h",
                "ActorLookUp.h",
                "Adapters.cpp",
                "Adapters.h",
                "PersonalLog.cpp",
                "PersonalLog.h",
                "PipeUser.cpp",
                "PostureManager.cpp",
                "PostureManager.h",
                "Puppet.cpp",
                "Puppet.h",
                "PuppetConsoleVariables.cpp",
                "PuppetConsoleVariables.h",
                "PuppetPhys.cpp",
                "PuppetRateOfDeath.cpp",
                "PuppetRateOfDeathConsoleVariables.cpp",
                "PuppetRateOfDeathConsoleVariables.h",
          ]
    }
    Group {
          name: "AIObject / PipeUserMovement / PipeUser"
          prefix: "AIObject/PipeUserMovement/"
          files: [
                "MovementBlock_InstallPipeUserInCover.h",
                "MovementBlock_SetupPipeUserCoverInformation.cpp",
                "MovementBlock_SetupPipeUserCoverInformation.h",
                "MovementBlock_UninstallPipeUserFromCover.h",
          ]
    }
    Group {
          name: "AIObject / AIObjectManager"
          files: [
                "AIObjectManager.cpp",
                "AIObjectManager.h",
          ]
    }
    Group {
          name: "AIObject / Coordination"
          files: [
                "AIGroup.cpp",
                "AIGroup.h",
                "AIGroupConsoleVariables.cpp",
                "AIGroupConsoleVariables.h",
                "BlackBoard.cpp",
                "BlackBoard.h",
                "Leader.cpp",
                "Leader.h",
                "LeaderAction.cpp",
                "LeaderAction.h",
                "UnitAction.cpp",
                "UnitAction.h",
                "UnitImg.cpp",
                "UnitImg.h",
          ]
    }
    Group {
          name: "AIObject / Formation"
          prefix: "Formation/"
          files: [
                "AIFormationDescriptor.h",
                "Formation.cpp",
                "Formation.h",
                "FormationConsoleVariables.cpp",
                "FormationConsoleVariables.h",
                "FormationManager.cpp",
                "FormationManager.h",
          ]
    }
    Group {
          name: "Helpers"
          files: [
                "AICollision.cpp",
                "AICollision.h",
                "AIHash.h",
                "MissLocationSensor.cpp",
                "MissLocationSensor.h",
                "Reference.h",
                "Reference.inl",
                "Shape.cpp",
                "Shape.h",
                "Shape2.cpp",
                "Shape2.h",
          ]
    }
    Group {
          name: "Helpers / Debug"
          files: [
                "AIDbgRecorder.cpp",
                "AIDbgRecorder.h",
                "AIDebugDrawHelpers.cpp",
                "AIDebugDrawHelpers.h",
                "AILog.cpp",
                "AILog.h",
                "AIMemStats.cpp",
                "AIRecorder.cpp",
                "AIRecorder.h",
                "DebugDraw.cpp",
                "DebugDrawConsoleVariables.cpp",
                "DebugDrawConsoleVariables.h",
                "DebugDrawContext.h",
                "NullAIDebugRenderer.h",
                "StatsManager.cpp",
                "StatsManager.h",
          ]
    }
    Group {
          name: "Helpers / Debug / AIBubblesSystem"
          prefix: "AIBubblesSystem/"
          files: [
                "AIBubblesSystem.h",
                "AIBubblesSystemConsoleVariables.cpp",
                "AIBubblesSystemConsoleVariables.h",
                "AIBubblesSystemImpl.cpp",
                "AIBubblesSystemImpl.h",
          ]
    }
    Group {
          name: "AIObject"
          files: [
                "PipeUserMovementActorAdapter.cpp",
                "PipeUserMovementActorAdapter.h",
          ]
    }
    Group {
          name: "Navigation"
          files: [
                "AIRadialOcclusion.cpp",
                "AIRadialOcclusion.h",
                "Navigation.cpp",
                "Navigation.h",
          ]
    }
    Group {
          name: "Navigation / DataStructs"
          files: [
                "PathObstacles.cpp",
                "PathObstacles.h",
          ]
    }
    Group {
          name: "Navigation / PathFinding"
          files: [
                "MNMPathfinder.cpp",
                "MNMPathfinder.h",
                "MNMPathfinderConsoleVariables.cpp",
                "MNMPathfinderConsoleVariables.h",
                "NavPath.cpp",
                "NavPath.h",
                "Navigation/PathHolder.h",
                "PathFollower.cpp",
                "PathFollower.h",
                "PathFollowerConsoleVariables.cpp",
                "PathFollowerConsoleVariables.h",
                "PathMarker.cpp",
                "PathMarker.h",
                "PathfinderNavigationSystemUser.h",
                "SmartPathFollower.cpp",
                "SmartPathFollower.h",
          ]
    }
    Group {
          name: "Navigation / MNM"
          prefix: "Navigation/MNM/"
          files: [
                "AgentSettings.h",
                "BoundingVolume.cpp",
                "BoundingVolume.h",
                "CompactSpanGrid.cpp",
                "CompactSpanGrid.h",
                "DangerousAreas.h",
                "DynamicSpanGrid.cpp",
                "DynamicSpanGrid.h",
                "HashComputer.h",
                "IslandConnections.cpp",
                "IslandConnections.h",
                "Islands.cpp",
                "Islands.h",
                "MNMDebugDefines.h",
                "MNMProfiler.h",
                "MNMUtils.h",
                "MNM_Type_info.h",
                "MarkupVolume.cpp",
                "MarkupVolume.h",
                "NavMesh.cpp",
                "NavMesh.h",
                "NavMeshQuery.cpp",
                "NavMeshQuery.h",
                "NavMeshQueryDebug.h",
                "NavMeshQueryManager.cpp",
                "NavMeshQueryManager.h",
                "NavMeshQueryProcessing.cpp",
                "NavMeshQueryProcessing.h",
                "OffGridLinks.cpp",
                "OffGridLinks.h",
                "OpenList.h",
                "Tile.cpp",
                "Tile.h",
                "TileConnectivity.cpp",
                "TileConnectivity.h",
                "TileGenerator.cpp",
                "TileGenerator.h",
                "TileGeneratorDraw.cpp",
                "Voxelizer.cpp",
                "Voxelizer.h",
                "WayQuery.h",
                "WayTriangleData.h",
          ]
    }
    Group {
          name: "Navigation / NavigationSystem"
          prefix: "Navigation/"
          files: [
                "NavigationSystem/AnnotationsLibrary.cpp",
                "NavigationSystem/AnnotationsLibrary.h",
                "NavigationSystem/IslandConnectionsManager.cpp",
                "NavigationSystem/IslandConnectionsManager.h",
                "NavigationSystem/NavigationConsoleVariables.cpp",
                "NavigationSystem/NavigationConsoleVariables.h",
                "NavigationSystem/NavigationSystem.cpp",
                "NavigationSystem/NavigationSystem.h",
                "NavigationSystem/NavigationUpdatesManager.cpp",
                "NavigationSystem/NavigationUpdatesManager.h",
                "NavigationSystem/OffMeshNavigationManager.cpp",
                "NavigationSystem/OffMeshNavigationManager.h",
                "NavigationSystem/VolumesManager.cpp",
                "NavigationSystem/VolumesManager.h",
                "NavigationSystem/WorldMonitor.cpp",
                "NavigationSystem/WorldMonitor.h",
                "NavigationSystemSchematyc.cpp",
                "NavigationSystemSchematyc.h",
          ]
    }
    Group {
          name: "Components / BehaviorTree"
          prefix: "Components/BehaviorTree/"
          files: [
                "BehaviorTreeComponent.cpp",
                "BehaviorTreeComponent.h",
                "BehaviorTreeNodes_Basic.cpp",
                "BehaviorTreeNodes_Basic.h",
          ]
    }
    Group {
          name: "Components / Navigation"
          prefix: "Components/Navigation/"
          files: [
                "CollisionAvoidanceAgent.cpp",
                "CollisionAvoidanceAgent.h",
                "MovementActorAdapter.cpp",
                "MovementActorAdapter.h",
                "NavigationComponent.cpp",
                "NavigationComponent.h",
                "NavigationMarkupShapeComponent.cpp",
                "NavigationMarkupShapeComponent.h",
          ]
    }
    Group {
          name: "Components / Factions"
          prefix: "Components/Factions/"
          files: [
                "FactionComponent.cpp",
                "FactionComponent.h",
          ]
    }
    Group {
          name: "Components / Perception"
          prefix: "Components/Perception/"
                files: [
                "ListenerComponent.cpp",
                "ListenerComponent.h",
                "ObservableComponent.cpp",
                "ObservableComponent.h",
                "ObserverComponent.cpp",
                "ObserverComponent.h",
                "PerceptionComponentHelpers.cpp",
                "PerceptionComponentHelpers.h",
          ]
    }
    Group {
          name: "Components / Cover"
          prefix: "Components/Cover/"
          files: [
                "CoverMovementBlocks.cpp",
                "CoverMovementBlocks.h",
                "CoverUserComponent.cpp",
                "CoverUserComponent.h",
          ]
    }
    Group {
          name: "AILightManager"
          files: [
                "AILightManager.cpp",
                "AILightManager.h",
          ]
    }
    Group {
          name: "Actions"
          files: [
                "AIActions.cpp",
                "AIActions.h",
          ]
    }
    Group {
          name: "Deprecated"
          files: [
                "FireCommand.cpp",
                "FireCommand.h",
          ]
    }
    Group {
          name: "Lib"
          files: [
                "CryAISystem.cpp",
                "CryAISystem.h",
          ]
    }
    Group {
          name: "Perception"
          files: [
                "GlobalPerceptionScaleHandler.cpp",
                "GlobalPerceptionScaleHandler.h",
                "Perception/PerceptionSystemSchematyc.cpp",
                "Perception/PerceptionSystemSchematyc.h",
                "VisionMap.cpp",
                "VisionMap.h",
                "VisionMapConsoleVariables.cpp",
                "VisionMapConsoleVariables.h",
          ]
    }
    Group {
          name: "Perception / AuditionMap"
          prefix: "AuditionMap/"
          files: [
                "AuditionMap.cpp",
                "AuditionMap.h",
                "AuditionMapDefinitions.h",
                "AuditionMapItemPool.h",
                "AuditionMapRayCastManager.cpp",
                "AuditionMapRayCastManager.h",
          ]
    }
    Group {
          name: "Perception / Target Selection"
          prefix: "TargetSelection/"
          files: [
                "TargetTrack.cpp",
                "TargetTrack.h",
                "TargetTrackCommon.cpp",
                "TargetTrackCommon.h",
                "TargetTrackConsoleVariables.cpp",
                "TargetTrackConsoleVariables.h",
                "TargetTrackGroup.cpp",
                "TargetTrackGroup.h",
                "TargetTrackManager.cpp",
                "TargetTrackManager.h",
                "TargetTrackModifiers.cpp",
                "TargetTrackModifiers.h",
          ]
    }
    Group {
          name: "Scripting"
          files: [
                "ScriptBind_AI.cpp",
                "ScriptBind_AI.h",
          ]
    }
    Group {
          name: "SmartObjects"
          files: [
                "SmartObjectOffMeshNavigation.cpp",
                "SmartObjectOffMeshNavigation.h",
                "SmartObjects.cpp",
                "SmartObjects.h",
                "SmartObjectsConsoleVariables.cpp",
                "SmartObjectsConsoleVariables.h",
          ]
    }
    Group {
          name: "Cover System"
          prefix: "Cover/"
          files: [
                "Cover.h",
                "CoverPath.cpp",
                "CoverPath.h",
                "CoverSampler.cpp",
                "CoverSampler.h",
                "CoverScorer.cpp",
                "CoverScorer.h",
                "CoverSurface.cpp",
                "CoverSurface.h",
                "CoverSystem.cpp",
                "CoverSystem.h",
                "CoverSystemConsoleVariables.cpp",
                "CoverSystemConsoleVariables.h",
                "CoverSystemSchematyc.cpp",
                "CoverSystemSchematyc.h",
                "CoverUser.cpp",
                "CoverUser.h",
                "DynamicCoverManager.cpp",
                "DynamicCoverManager.h",
                "EntityCoverSampler.cpp",
                "EntityCoverSampler.h",
          ]
    }
    Group {
          name: "Factions"
          prefix: "Factions/"
          files: [
                "FactionMap.cpp",
                "FactionMap.h",
                "FactionSystem.cpp",
                "FactionSystem.h",
                "FactionSystemSchematyc.cpp",
                "FactionSystemSchematyc.h",
          ]
    }
    Group {
          name: "Group"
          prefix: "Group/"
          files: [
                "Group.cpp",
                "Group.h",
                "GroupManager.cpp",
                "GroupManager.h",
          ]
    }
    Group {
          name: "Communication System"
          prefix: "Communication/"
          files: [
                "Communication.h",
                "CommunicationChannel.cpp",
                "CommunicationChannel.h",
                "CommunicationChannelManager.cpp",
                "CommunicationChannelManager.h",
                "CommunicationConsoleVariables.cpp",
                "CommunicationConsoleVariables.h",
                "CommunicationManager.cpp",
                "CommunicationManager.h",
                "CommunicationPlayer.cpp",
                "CommunicationPlayer.h",
                "CommunicationTestManager.cpp",
                "CommunicationTestManager.h",
          ]
    }
    Group {
          name: "System"
          files: [
                "AIConsoleVariables.cpp",
                "AIConsoleVariables.h",
                "AILegacyConsoleVariables.cpp",
                "AILegacyConsoleVariables.h",
                "CAISystem.cpp",
                "CAISystem.h",
                "CAISystemPhys.cpp",
                "CAISystemUpdate.cpp",
                "CSignal.cpp",
                "CSignal.h",
                "Configuration.h",
                "Environment.cpp",
                "Environment.h",
                "ObjectContainer.cpp",
                "ObjectContainer.h",
                "XMLUtils.h",
                "resource.h",
          ]
    }
    Group {
          name: "Movement"
          prefix: "Movement/"
          files: [
                "Readme.txt"
          ]
    }
    Group {
          name: "Movement / Blocks"
          prefix: "Movement/"
          files: [
                "MovementBlock_DefaultEmpty.h",
                "MovementBlock_FollowPath.cpp",
                "MovementBlock_FollowPath.h",
                "MovementBlock_HarshStop.cpp",
                "MovementBlock_HarshStop.h",
                "MovementBlock_TurnTowardsPosition.cpp",
                "MovementBlock_TurnTowardsPosition.h",
                "MovementBlock_UseExactPositioning.cpp",
                "MovementBlock_UseExactPositioning.h",
                "MovementBlock_UseExactPositioningBase.cpp",
                "MovementBlock_UseExactPositioningBase.h",
                "MovementBlock_UseSmartObject.cpp",
                "MovementBlock_UseSmartObject.h",
          ]
    }
    Group {
          name: "Movement / GoalOps"
          prefix: "Movement/"
          files: [
                "MoveOp.cpp",
                "MoveOp.h",
          ]
    }
    Group {
          name: "Movement / Helpers"
          prefix: "Movement/"
          files: [
                "MovementHelpers.cpp",
                "MovementHelpers.h",
          ]
    }
    Group {
          name: "Movement / System"
          prefix: "Movement/"
          files: [
                "MovementActor.cpp",
                "MovementActor.h",
                "MovementConsoleVariables.cpp",
                "MovementConsoleVariables.h",
                "MovementPlan.cpp",
                "MovementPlan.h",
                "MovementPlanner.cpp",
                "MovementPlanner.h",
                "MovementSystem.cpp",
                "MovementSystem.h",
                "MovementSystemCreator.cpp",
                "MovementSystemCreator.h",
          ]
    }
    Group {
          name: "Tactical Point System"
          prefix: "TacticalPointSystem/"
          files: [
                "TacticalPointQuery.cpp",
                "TacticalPointQuery.h",
                "TacticalPointQueryEnum.h",
                "TacticalPointSystem.cpp",
                "TacticalPointSystem.h",
                "TacticalPointSystemConsoleVariables.cpp",
                "TacticalPointSystemConsoleVariables.h",
          ]
    }
    Group {
          name: "Behavior Tree"
          prefix: "BehaviorTree/"
          files: [
                "BehaviorTreeConsoleVariables.cpp",
                "BehaviorTreeConsoleVariables.h",
                "BehaviorTreeManager.cpp",
                "BehaviorTreeManager.h",
                "BehaviorTreeMetaExtensions.cpp",
                "BehaviorTreeMetaExtensions.h",
                "BehaviorTreeNodeRegistration.cpp",
                "BehaviorTreeNodeRegistration.h",
                "BehaviorTreeNodes_AI.cpp",
                "BehaviorTreeNodes_AI.h",
                "BehaviorTreeNodes_Core.cpp",
                "BehaviorTreeNodes_Core.h",
                "ExecutionStackFileLogger.cpp",
                "ExecutionStackFileLogger.h",
                "TreeVisualizer.cpp",
                "TreeVisualizer.h",
          ]
    }
    Group {
          name: "Game Specific"
          prefix: "GameSpecific/"
          files: [
                "GoalOp_Crysis2.cpp",
                "GoalOp_Crysis2.h",
                "GoalOp_G02.cpp",
                "GoalOp_G02.h",
                "GoalOp_G04.cpp",
                "GoalOp_G04.h",
          ]
    }
    Group {
          name: "Sequence"
          prefix: "Sequence/"
          files: [
                "Sequence.cpp",
                "Sequence.h",
                "SequenceAgentAdapter.h",
                "SequenceFlowNodes.cpp",
                "SequenceFlowNodes.h",
                "SequenceManager.cpp",
                "SequenceManager.h",
          ]
    }
    Group {
          name: "ClusterDetector"
          files: [
                "ClusterDetector.cpp",
                "ClusterDetector.h",
                "ClusterRequest.cpp",
          ]
    }
    Group {
          name: "Collision Avoidance"
          prefix: "CollisionAvoidance/"
          files: [
                "CollisionAvoidanceConsoleVariables.cpp",
                "CollisionAvoidanceConsoleVariables.h",
                "CollisionAvoidanceSystem.cpp",
                "CollisionAvoidanceSystem.h",
          ]
    }
    Group {
          name: "Goals"
          files: [
                "GoalOp.cpp",
                "GoalOp.h",
                "GoalOpFactory.cpp",
                "GoalOpFactory.h",
                "GoalOpStick.cpp",
                "GoalOpStick.h",
                "GoalOpTrace.cpp",
                "GoalOpTrace.h",
                "GoalPipe.cpp",
                "GoalPipe.h",
                "GoalPipeXMLReader.cpp",
                "GoalPipeXMLReader.h",
                "PipeManager.cpp",
                "PipeManager.h",
          ]
    }
    Group {
          name: "Goals / GoalOps"
          prefix: "GoalOps/"
          files: [
                "ShootOp.cpp",
                "ShootOp.h",
                "TeleportOp.cpp",
                "TeleportOp.h",
          ]
    }
    Group {
          name: "InterestSystem"
          files: [
                "CentralInterestManager.cpp",
                "CentralInterestManager.h",
                "PersonalInterestManager.cpp",
                "PersonalInterestManager.h",
          ]
    }
    Group {
          name: "Mannequin"
          prefix: "Mannequin/"
          files: [
                "MannequinGoalOp.cpp",
                "MannequinGoalOp.h",
          ]
    }
    files: [
          "AIObjectIterators.h",
          "AIQuadTree.h",
          "AIQuadTree.inl",
          "EnterLeaveUpdateGoalOp.h",
          "GenericAStarSolver.h",
          "HashSpace.h",
          "PolygonSetOps/BiDirMap.h",
          "PolygonSetOps/LineSeg.h",
          "PolygonSetOps/Polygon2d.h",
          "PolygonSetOps/Utils.h",
          "ShapeContainer.h",
          "WorldOctree.h",
    ]
}
