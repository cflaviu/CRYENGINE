import qbs 1.0

Project {
    references: [
        "Audio.qbs",
        "../../Engine/Shaders/Shaders.qbs",
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
        "RenderDll/XRenderD3D9/CryRender.qbs",
        "CrySchematyc/CrySchematyc.qbs",
        "CryScriptSystem/CryScriptSystem.qbs",
        "CrySystem/CrySystem.qbs",
        "CryUDR/CryUDR.qbs",
    ]
}
