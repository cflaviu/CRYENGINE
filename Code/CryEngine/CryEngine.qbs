import qbs 1.0

Project {
    references: [
        "Audio.qbs",
        "Shaders.qbs",
        "Cry3DEngine/Cry3DEngine.qbs",
        "CryAction/CryAction.qbs",
        "CryAISystem/CryAISystem.qbs",
        "CryAnimation/CryAnimation.qbs",
        "CryDynamicResponseSystem/CryDynamicResponseSystem.qbs",
        "CryEntitySystem/CryEntitySystem.qbs",
        "CryFlowGraph/CryFlowGraph.qbs",
        "CryFont/CryFont.qbs",
        "CryInput/CryInput.qbs",
        "CryLiveCreate/CryLiveCreate.qbs",
        "CryMovie/CryMovie.qbs",
        "CryNetwork/CryNetwork.qbs",
        "CryPhysics/CryPhysics.qbs",
        "RenderDll/XRenderD3D9/CryRenderD3D11.qbs",
        "RenderDll/XRenderD3D9/CryRenderD3D12.qbs",
        "RenderDll/XRenderD3D9/CryRenderVulkan.qbs",
        "CrySchematyc/CrySchematyc.qbs",
        "CryScriptSystem/CryScriptSystem.qbs",
        "CrySystem/CrySystem.qbs",
        "CryUDR/CryUDR.qbs",
    ]
}
