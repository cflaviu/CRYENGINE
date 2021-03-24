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
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryFlowGraph",
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
        name: "Flow System / Nodes"
        prefix: "FlowSystem/Nodes/"
        files: [
            "AnimationEventListenerNode.cpp",
            "ComputeLightingNode.cpp",
            "EntitiesInRangeNode.cpp",
            "FlowActionMapNodes.cpp",
            "FlowAttachmentNodes.cpp",
            "FlowAudioDefaultTriggerNode.cpp",
            "FlowAudioParameter.cpp",
            "FlowAudioPreload.cpp",
            "FlowAudioPreloadData.cpp",
            "FlowAudioRtpcNode.cpp",
            "FlowAudioSettingNode.cpp",
            "FlowAudioSwitchNode.cpp",
            "FlowAudioSwitchStateNode.cpp",
            "FlowAudioTriggerNode.cpp",
            "FlowAudioTriggerWithCallbacksNode.cpp",
            "FlowAutoNoiseNodes.cpp",
            "FlowBaseXmlNode.cpp",
            "FlowBaseXmlNode.h",
            "FlowCVarsNode.cpp",
            "FlowCameraNodes.cpp",
            "FlowClipCaptureNodes.cpp",
            "FlowCompositeNode.cpp",
            "FlowCompositeNode.h",
            "FlowConditionNode.cpp",
            "FlowContainerNode.cpp",
            "FlowCustomActionNodes.cpp",
            "FlowCustomActionNodes.h",
            "FlowDebugNodes.cpp",
            "FlowDelayNode.cpp",
            "FlowDelayNode.h",
            "FlowDynamicResponseSignal.cpp",
            "FlowDynamicResponseVariable.cpp",
            "FlowEngineEffectsNodes.cpp",
            "FlowEngineNodes.cpp",
            "FlowEntityIterator.cpp",
            "FlowEntityNode.cpp",
            "FlowEntityNode.h",
            "FlowEnvironmentNodes.cpp",
            "FlowExecuteStringNode.cpp",
            "FlowFlashInvokeNode.cpp",
            "FlowFrameworkBaseNode.h",
            "FlowGameVolumesNodes.cpp",
            "FlowGeometryNodes.cpp",
            "FlowHUDNodes.cpp",
            "FlowInputNode.cpp",
            "FlowInterpolNodes.cpp",
            "FlowKinectNodesDurango.cpp",
            "FlowLogNode.cpp",
            "FlowLogNode.h",
            "FlowLogicNodes.cpp",
            "FlowMaterialNodes.cpp",
            "FlowMathNodes.cpp",
            "FlowMissionNodes.cpp",
            "FlowMouseInfo.cpp",
            "FlowMovieNodes.cpp",
            "FlowNodeAI.cpp",
            "FlowNodeAIAction.cpp",
            "FlowNodeAIAction.h",
            "FlowNodeStereoparameters.cpp",
            "FlowNoiseNodes.cpp",
            "FlowNoiseNodes.h",
            "FlowParticle.cpp",
            "FlowPhysicsNodes.cpp",
            "FlowPlatformNode.cpp",
            "FlowPrefabNodes.cpp",
            "FlowPrefabNodes.h",
            "FlowScriptedNode.cpp",
            "FlowScriptedNode.h",
            "FlowStartNode.cpp",
            "FlowStartNode.h",
            "FlowStatsNodes.cpp",
            "FlowStringNodes.cpp",
            "FlowTimeNode.cpp",
            "FlowTrackEventNode.cpp",
            "FlowTrackEventNode.h",
            "FlowVRNodes.cpp",
            "FlowXmlDataNodes.cpp",
            "FlowXmlFileNodes.cpp",
            "FlowXmlNavNodes.cpp",
            "GameTokenNode.cpp",
            "IndexerNode.cpp",
            "MultiplexerNode.cpp",
            "OwnerAngularInterpolatorNode.cpp",
            "OwnerAngularRotationNode.cpp",
            "OwnerLinearInterpolatorNode.cpp",
            "PlayCGANode.cpp",
            "PlaySequenceNode.cpp",
        ]
    }
    Group {
        name: "Flow System / Unit Tests"
        prefix: "FlowSystem/UnitTests/"
        files: [
            "FlowGraphDebuggerUnitTests.cpp",
        ]
    }
    Group {
        name: "GameTokens"
        prefix: "GameTokens/"
        files: [
            "GameToken.cpp",
            "GameToken.h",
            "GameTokenSystem.cpp",
            "GameTokenSystem.h",
            "ScriptBind_GameToken.cpp",
            "ScriptBind_GameToken.h",
        ]
    }
    Group {
        name: "Flow System"
        prefix: "FlowSystem/"
        files: [
            "FlowData.cpp",
            "FlowData.h",
            "FlowGraph.cpp",
            "FlowGraph.h",
            "FlowGraphDebugger.cpp",
            "FlowGraphDebugger.h",
            "FlowSerialize.cpp",
            "FlowSerialize.h",
            "FlowSystem.cpp",
            "FlowSystem.h",
            "FlowSystemCVars.cpp",
            "FlowSystemCVars.h",
        ]
    }
    Group {
        name: "Flow System / Inspectors"
        prefix: "FlowSystem/Inspectors/"
            files: [
            "FlowFilters.cpp",
            "FlowFilters.h",
            "FlowInspectorDefault.cpp",
            "FlowInspectorDefault.h",
        ]
    }
    Group {
        name: "Flow System / Modules"
        prefix: "FlowSystem/Modules/"
        files: [
            "FlowModuleNodes.cpp",
            "FlowModuleNodes.h",
            "Module.cpp",
            "Module.h",
            "ModuleManager.cpp",
            "ModuleManager.h",
        ]
    }
    files: [
        "FlowGraphModule.cpp",
        "HelperFunctions.h",
    ]
}
