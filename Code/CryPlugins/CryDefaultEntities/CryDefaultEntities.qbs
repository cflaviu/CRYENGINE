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
        "../CryAction",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryDefaultEntities/Module",
        "../CryDefaultEntities/Module/.",
        "../CrySchematyc/Core/Interface",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["Module/StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "Legacy / Audio"
        prefix: "Module/Legacy/Audio/"
        files: [
            "AudioAreaAmbienceEntity.cpp",
            "AudioAreaAmbienceEntity.h",
            "AudioAreaEntity.cpp",
            "AudioAreaEntity.h",
            "AudioAreaRandom.cpp",
            "AudioAreaRandom.h",
            "AudioEntitiesUtils.cpp",
            "AudioEntitiesUtils.h",
            "AudioTriggerSpotEntity.cpp",
            "AudioTriggerSpotEntity.h",
        ]
    }
    Group {
        name: "Legacy / Cameras"
        prefix: "Module/Legacy/Cameras/"
        files: [
            "CameraSource.cpp",
            "CameraSource.h",
        ]
    }
    Group {
        name: "Legacy / Debug"
        prefix: "Module/Legacy/Debug/"
        files: [
            "Comment.cpp",
            "Comment.h",
        ]
    }
    Group {
        name: "Legacy / Geometry"
        prefix: "Module/Legacy/Geometry/"
        files: [
            "GeomEntity.cpp",
            "GeomEntity.h",
        ]
    }
    Group {
        name: "Legacy / Helpers"
        prefix: "Module/Legacy/Helpers/"
        files: [
            "DesignerEntityComponent.cpp",
            "DesignerEntityComponent.h",
            "EntityFlowNode.cpp",
            "EntityFlowNode.h",
        ]
    }
    Group {
        name: "Legacy / Lights"
        prefix: "Module/Legacy/Lights/"
        files: [
            "EnvironmentProbe.cpp",
            "EnvironmentProbe.h",
            "LightEntity.cpp",
            "LightEntity.h",
        ]
    }
    Group {
        name: "Legacy / Particles"
        prefix: "Module/Legacy/Particles/"
        files: [
            "ParticleEntity.cpp",
            "ParticleEntity.h",
        ]
    }
    Group {
        name: "Legacy / Physics"
        prefix: "Module/Legacy/Physics/"
        files: [
            "LocalGrid.cpp",
            "LocalGrid.h",
            "RopeEntity.cpp",
        ]
    }
    Group {
        name: "Legacy / Triggers"
        prefix: "Module/Legacy/Triggers/"
        files: [
            "TriggerEntity.cpp",
            "TriggerEntity.h",
        ]
    }
    Group {
        name: "Lights"
        prefix: "Module/DefaultComponents/Lights/"
        files: [
            "EnvironmentProbeComponent.cpp",
            "EnvironmentProbeComponent.h",
            "ILightComponent.h",
            "PointLightComponent.cpp",
            "PointLightComponent.h",
            "ProjectorLightComponent.cpp",
            "ProjectorLightComponent.h",
        ]
    }
    Group {
        name: "Geometry"
        prefix: "Module/DefaultComponents/Geometry/"
        files: [
            "AdvancedAnimationComponent.cpp",
            "AdvancedAnimationComponent.h",
            "AlembicComponent.cpp",
            "AlembicComponent.h",
            "AnimatedMeshComponent.cpp",
            "AnimatedMeshComponent.h",
            "BaseMeshComponent.cpp",
            "BaseMeshComponent.h",
            "StaticMeshComponent.cpp",
            "StaticMeshComponent.h",
        ]
    }
    Group {
        name: "Effects"
        prefix: "Module/DefaultComponents/Effects/"
        files: [
            "DecalComponent.cpp",
            "DecalComponent.h",
            "FogComponent.cpp",
            "FogComponent.h",
            "ParticleComponent.cpp",
            "ParticleComponent.h",
            "RainComponent.cpp",
            "RainComponent.h",
            "WaterRippleComponent.cpp",
            "WaterRippleComponent.h",
        ]
    }
    Group {
        name: "Debug"
        prefix: "Module/DefaultComponents/Debug/"
        files: [
            "DebugDrawComponent.cpp",
            "DebugDrawComponent.h",
        ]
    }
    Group {
        name: "Constraints"
        prefix: "Module/DefaultComponents/Constraints/"
        files: [
            "BreakableJoint.cpp",
            "BreakableJoint.h",
            "LineConstraint.cpp",
            "LineConstraint.h",
            "PlaneConstraint.cpp",
            "PlaneConstraint.h",
            "PointConstraint.cpp",
            "PointConstraint.h",
        ]
    }
    Group {
        name: "Cameras"
        prefix: "Module/DefaultComponents/Cameras/"
        files: [
            "CameraComponent.cpp",
            "CameraComponent.h",
            "CameraManager.h",
            "ICameraManager.h",
        ]
    }
    Group {
        name: "Cameras / VirtualReality"
        prefix: "Module/DefaultComponents/Cameras/VirtualReality/"
        files: [
            "RoomscaleCamera.cpp",
            "RoomscaleCamera.h",
        ]
    }
    Group {
        name: "Physics"
        prefix: "Module/DefaultComponents/Physics/"
        files: [
            "AreaComponent.cpp",
            "AreaComponent.h",
            "BoxPrimitiveComponent.cpp",
            "BoxPrimitiveComponent.h",
            "CapsulePrimitiveComponent.cpp",
            "CapsulePrimitiveComponent.h",
            "CharacterControllerComponent.cpp",
            "CharacterControllerComponent.h",
            "ClothComponent.cpp",
            "ClothComponent.h",
            "CylinderPrimitiveComponent.cpp",
            "CylinderPrimitiveComponent.h",
            "LocalGridComponent.cpp",
            "LocalGridComponent.h",
            "ParticleComponent.cpp",
            "ParticleComponent.h",
            "PhysicsPrimitiveComponent.cpp",
            "PhysicsPrimitiveComponent.h",
            "RagdollComponent.cpp",
            "RagdollComponent.h",
            "RigidBodyComponent.cpp",
            "RigidBodyComponent.h",
            "SampleRigidbodyActorComponent.cpp",
            "SampleRigidbodyActorComponent.h",
            "SpherePrimitiveComponent.cpp",
            "SpherePrimitiveComponent.h",
            "ThrusterComponent.cpp",
            "ThrusterComponent.h",
            "WaterVolumeComponent.cpp",
            "WaterVolumeComponent.h",
        ]
    }
    Group {
        name: "Physics / Vehicles"
        prefix: "Module/DefaultComponents/Physics/Vehicles/"
        files: [
            "VehicleComponent.cpp",
            "VehicleComponent.h",
            "WheelComponent.cpp",
            "WheelComponent.h",
        ]
    }
    Group {
        name: "Physics / VirtualReality"
        prefix: "Module/DefaultComponents/Physics/VirtualReality/"
        files: [
            "VirtualRealityInteractionComponent.cpp",
            "VirtualRealityInteractionComponent.h",
        ]
    }
    Group {
        name: "Input"
        prefix: "Module/DefaultComponents/Input/"
        files: [
            "InputComponent.cpp",
            "InputComponent.h",
        ]
    }
    Group {
        name: "Audio"
        prefix: "Module/DefaultComponents/Audio/"
        files: [
            "AreaComponent.cpp",
            "AreaComponent.h",
            "DefaultTriggerComponent.cpp",
            "DefaultTriggerComponent.h",
            "EnvironmentComponent.cpp",
            "EnvironmentComponent.h",
            "ListenerComponent.cpp",
            "ListenerComponent.h",
            "MultiListenerComponent.cpp",
            "MultiListenerComponent.h",
            "OcclusionComponent.cpp",
            "OcclusionComponent.h",
            "ParameterComponent.cpp",
            "ParameterComponent.h",
            "PreloadComponent.cpp",
            "PreloadComponent.h",
            "SettingComponent.cpp",
            "SettingComponent.h",
            "SwitchStateComponent.cpp",
            "SwitchStateComponent.h",
            "TriggerComponent.cpp",
            "TriggerComponent.h",
            "VelocityComponent.cpp",
            "VelocityComponent.h",
        ]
    }
    Group {
        name: "Utilities"
        prefix: "Module/DefaultComponents/Utilities/"
        files: [
            "ChildEntityComponent.cpp",
            "ChildEntityComponent.h",
        ]
    }
    Group {
        name: "ComponentHelpers"
        prefix: "Module/DefaultComponents/ComponentHelpers/"
        files: [
            "PhysicsParameters.h",
        ]
    }
    files: [
        "Module/IDefaultComponentsPlugin.h",
        "Module/PluginDll.cpp",
        "Module/PluginDll.h",
        "Module/resource.h",
    ]
}
