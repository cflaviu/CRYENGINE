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
        "../CrySchematyc/Core/Interface",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["stdafx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "CharacterInstance"
        files: [
            "AttachmentManager.cpp",
            "AttachmentManager.h",
            "CharacterInstance.cpp",
            "CharacterInstance.h",
            "CharacterInstanceProcessing.cpp",
            "CharacterInstanceProcessing.h",
            "CharacterInstance_Render.cpp",
            "SkeletonEffectManager.cpp",
            "SkeletonEffectManager.h",
            "TransitionQueue.cpp",
            "TransitionQueue.h",
        ]
    }
    Group {
        name: "CharacterInstance / Attachment"
        files: [
            "AttachmentBase.cpp",
            "AttachmentBase.h",
            "AttachmentBone.cpp",
            "AttachmentBone.h",
            "AttachmentFace.cpp",
            "AttachmentFace.h",
            "AttachmentPRow.cpp",
            "AttachmentPRow.h",
            "AttachmentProxy.cpp",
            "AttachmentProxy.h",
            "AttachmentSkin.cpp",
            "AttachmentSkin.h",
            "AttachmentVCloth.cpp",
            "AttachmentVCloth.h",
            "AttachmentVClothPreProcess.cpp",
            "AttachmentVClothPreProcess.h",
            "AttachmentVClothPreProcessDijkstra.h",
            "SocketSimulation.cpp",
            "SocketSimulation.h",
        ]
    }
    Group {
        name: "CharacterInstance / SkeletonAnim"
        files: [
            "ParametricSampler.cpp",
            "ParametricSampler.h",
            "SkeletonAnim.cpp",
            "SkeletonAnim.h",
            "SkeletonAnim_BlendMan.cpp",
            "SkeletonAnim_Commands.cpp",
            "SkeletonAnim_Locator.cpp",
            "SkeletonAnim_Params.cpp",
            "SkeletonAnim_Queue.cpp",
        ]
    }
    Group {
        name: "CharacterInstance / SkeletonPose"
        files: [
            "SkeletonPose.cpp",
            "SkeletonPose.h",
            "SkeletonPose_Debug.cpp",
            "SkeletonPose_Process.cpp",
        ]
    }
    Group {
        name: "CharacterInstance / FacialAnimation"
        files: [
            "CryModEffMorph.cpp",
            "CryModEffMorph.h",
            "FacialAnimation/EyeMovementFaceAnim.cpp",
            "FacialAnimation/EyeMovementFaceAnim.h",
            "FacialAnimation/FaceAnimSequence.cpp",
            "FacialAnimation/FaceAnimSequence.h",
            "FacialAnimation/FaceAnimation.cpp",
            "FacialAnimation/FaceAnimation.h",
            "FacialAnimation/FaceChannelKeyCleanup.cpp",
            "FacialAnimation/FaceChannelKeyCleanup.h",
            "FacialAnimation/FaceChannelSmoothing.cpp",
            "FacialAnimation/FaceChannelSmoothing.h",
            "FacialAnimation/FaceEffector.cpp",
            "FacialAnimation/FaceEffector.h",
            "FacialAnimation/FaceEffectorLibrary.cpp",
            "FacialAnimation/FaceEffectorLibrary.h",
            "FacialAnimation/FaceJoystick.cpp",
            "FacialAnimation/FaceJoystick.h",
            "FacialAnimation/FaceState.cpp",
            "FacialAnimation/FaceState.h",
            "FacialAnimation/FacialInstance.cpp",
            "FacialAnimation/FacialInstance.h",
            "FacialAnimation/FacialModel.cpp",
            "FacialAnimation/FacialModel.h",
            "FacialAnimation/LipSync.cpp",
            "FacialAnimation/LipSync.h",
            "PathExpansion.cpp",
            "PathExpansion.h",
        ]
    }
    Group {
        name: "CharacterInstance / PoseModifier"
        prefix: "PoseModifier/"
        files: [
            "ApplyOffsetRotation.cpp",
            "CopyTransform.cpp",
            "DirectionalBlender.cpp",
            "DirectionalBlender.h",
            "FeetLock.cpp",
            "FeetLock.h",
            "LimbIk.cpp",
            "LimbIk.h",
            "LookIk.cpp",
            "OperatorQueue.cpp",
            "OperatorQueue.h",
            "PoseAlignerChain.cpp",
            "PoseAlignerChain.h",
            "PoseBlenderAim.cpp",
            "PoseBlenderAim.h",
            "PoseBlenderLook.cpp",
            "PoseBlenderLook.h",
            "PoseMatching.cpp",
            "PoseMatching.h",
            "PoseModifier.cpp",
            "PoseModifier.h",
            "PoseModifierDesc.cpp",
            "PoseModifierDesc.h",
            "PoseModifierHelper.cpp",
            "PoseModifierHelper.h",
            "Recoil.cpp",
            "Recoil.h",
        ]
    }
    Group {
        name: "CharacterInstance / Command"
        files: [
            "Command_Buffer.cpp",
            "Command_Buffer.h",
            "Command_Commands.cpp",
            "Command_Commands.h",
        ]
    }
    Group {
        name: "CharacterInstance / Skeleton"
        files: [
            "Skeleton.cpp",
            "Skeleton.h",
        ]
    }
    Group {
        name: "CharacterInstance / SkeletonPhysics"
        files: [
            "SkeletonPhysics.cpp",
            "SkeletonPhysics.h",
            "SkeletonPhysics_Jobs.cpp",
        ]
    }
    Group {
        name: "CharacterManager"
        files: [
            "AnimEventList.cpp",
            "AnimEventList.h",
            "AnimEventLoader.cpp",
            "AnimEventLoader.h",
            "CharacterManager.cpp",
            "CharacterManager.h",
            "ChrParamLoader.cpp",
            "ChrParamLoader.h",
            "LoaderCGA.cpp",
            "LoaderCGA.h",
            "LoaderCHR.cpp",
            "LoaderCHR.h",
            "LoaderDBA.cpp",
            "LoaderDBA.h",
            "LoaderSKIN.cpp",
            "LoaderTCB.cpp",
            "LoaderTCB.h",
        ]
    }
    Group {
        name: "CharacterManager / AnimLoader"
        files: [
            "AnimationManager.cpp",
            "AnimationManager.h",
            "Controller.h",
            "ControllerOpt.h",
            "ControllerPQ.cpp",
            "ControllerPQ.h",
            "ControllerPQLog.cpp",
            "ControllerPQLog.h",
            "ControllerTCB.cpp",
            "ControllerTCB.h",
            "GlobalAnimationHeader.h",
            "GlobalAnimationHeaderAIM.cpp",
            "GlobalAnimationHeaderAIM.h",
            "GlobalAnimationHeaderCAF.cpp",
            "GlobalAnimationHeaderCAF.h",
            "GlobalAnimationHeaderLMG.cpp",
            "GlobalAnimationHeaderLMG.h",
            "QuatQuantization.h",
        ]
    }
    Group {
        name: "CharacterManager / ModelRig"
        files: [
            "Model.cpp",
            "Model.h",
            "ModelAnimationSet.cpp",
            "ModelAnimationSet.h",
            "ModelMesh.cpp",
            "ModelMesh.h",
            "ModelMesh_DebugPC.cpp",
            "ModelSkin.cpp",
            "ModelSkin.h",
        ]
    }
    Group {
        name: "Common"
        files: [
            "AnimationBase.cpp",
            "AnimationBase.h",
            "DrawHelper.cpp",
            "DrawHelper.h",
            "Helper.h",
            "cvars.cpp",
            "cvars.h",
            "resource.h",
        ]
    }
    Group {
        name: "Memory"
        files: [
            "ControllerDefragHeap.cpp",
            "ControllerDefragHeap.h",
            "Memory/AlignedAllocator.h",
            "Memory/IAllocator.h",
            "Memory/Memory.cpp",
            "Memory/Memory.h",
            "Memory/MultiBuffer.h",
            "Memory/PolymorphicAllocator.cpp",
            "Memory/PolymorphicAllocator.h",
            "Memory/Pool.cpp",
            "Memory/Pool.h",
            "Memory/PoolAllocator.cpp",
            "Memory/PoolAllocator.h",
        ]
    }
    Group {
        name: "Serialization"
        prefix: "Serialization/"
        files: [
            "SerializationCommon.h",
        ]
    }
    Group {
        name: "Vertex"
        prefix: "Vertex/"
        files: [
            "VertexAnimation.cpp",
            "VertexAnimation.h",
            "VertexCommand.cpp",
            "VertexCommand.h",
            "VertexCommandBuffer.cpp",
            "VertexCommandBuffer.h",
            "VertexData.cpp",
            "VertexData.h",
        ]
    }
}
