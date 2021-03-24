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
        "../CryEntitySystem",
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
        name: "Components / Area"
        files: [
            "AreaProxy.cpp",
            "AreaProxy.h",
        ]
    }
    Group {
        name: "Components / Audio"
        files: [
            "EntityAudioProxy.cpp",
            "EntityAudioProxy.h",
        ]
    }
    Group {
        name: "Components / CameraProxy"
        files: [
            "CameraProxy.cpp",
            "CameraProxy.h",
        ]
    }
    Group {
        name: "Components / ClipVolume"
        files: [
            "ClipVolumeProxy.cpp",
            "ClipVolumeProxy.h",
        ]
    }
    Group {
        name: "Components / DynamicResponse"
            files: [
            "DynamicResponseProxy.cpp",
            "DynamicResponseProxy.h",
        ]
    }
    Group {
        name: "Components / FlowGraph"
        files: [
            "FlowGraphComponent.cpp",
            "FlowGraphComponent.h",
            "FlowGraphProxy.cpp",
            "FlowGraphProxy.h",
        ]
    }
    Group {
        name: "Proxy / NetEntity"
        files: [
            "NetEntity.cpp",
            "NetEntity.h",
        ]
    }
    Group {
        name: "Components / Physics"
        files: [
            "PhysicsEventListener.cpp",
            "PhysicsEventListener.h",
            "PhysicsProxy.cpp",
            "PhysicsProxy.h",
            "RopeProxy.cpp",
            "RopeProxy.h",
        ]
    }
    Group {
        name: "Components / Render"
        files: [
            "EntitySlot.cpp",
            "EntitySlot.h",
            "RenderProxy.cpp",
            "RenderProxy.h",
        ]
    }
    Group {
        name: "Components / Script"
        files: [
            "EntityScript.cpp",
            "EntityScript.h",
            "ScriptBind_Entity.cpp",
            "ScriptBind_Entity.h",
            "ScriptProperties.cpp",
            "ScriptProperties.h",
            "ScriptProxy.cpp",
            "ScriptProxy.h",
        ]
    }
    Group {
        name: "Components / SubstitutionProxy"
        files: [
            "SubstitutionProxy.cpp",
            "SubstitutionProxy.h",
        ]
    }
    Group {
        name: "Components / TrackView"
        files: [
            "EntityNodeProxy.cpp",
            "EntityNodeProxy.h",
        ]
    }
    Group {
        name: "Components / TriggerProxy"
        files: [
            "TriggerProxy.cpp",
            "TriggerProxy.h",
        ]
    }
    Group {
        name: "Schematyc"
        files: [
            "Schematyc/EntityObjectDebugger.cpp",
            "Schematyc/EntityObjectDebugger.h",
            "Schematyc/EntitySchematycActions.h",
            "Schematyc/EntitySchematycUtilFunctions.h",
            "Schematyc/EntityUtilsComponent.cpp",
            "Schematyc/EntityUtilsComponent.h",
        ]
    }
    Group {
        name: "EntityClass"
        files: [
            "EntityClass.cpp",
            "EntityClass.h",
            "EntityClassRegistry.cpp",
            "EntityClassRegistry.h",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "AffineParts.cpp",
            "AffineParts.h",
            "AreaSolid.cpp",
            "BSPTree3D.cpp",
            "CharacterBoneAttachmentManager.cpp",
            "CharacterBoneAttachmentManager.h",
            "CryEntityDLL.cpp",
            "Entity.cpp",
            "Entity.h",
            "EntityArchetype.cpp",
            "EntityArchetype.h",
            "EntityCVars.cpp",
            "EntityCVars.h",
            "EntityComponentsCache.cpp",
            "EntityComponentsCache.h",
            "EntityComponentsVector.cpp",
            "EntityComponentsVector.h",
            "EntityIt.h",
            "EntityLayer.cpp",
            "EntityLayer.h",
            "EntitySystem.cpp",
            "EntitySystem.h",
            "EntityUnitTests.cpp",
            "EntityUnitTests.h",
            "GeomCacheAttachmentManager.cpp",
            "GeomCacheAttachmentManager.h",
            "SaltBufferArray.h",
        ]
    }
    Group {
        name: "AreaManager"
        files: [
            "Area.cpp",
            "Area.h",
            "AreaGrid.cpp",
            "AreaGrid.h",
            "AreaManager.cpp",
            "AreaManager.h",
        ]
    }
    Group {
        name: "BreakableManager"
        files: [
            "BreakableManager.cpp",
            "BreakableManager.h",
            "BreakablePlane.cpp",
            "BreakablePlane.h",
        ]
    }
    Group {
        name: "Loading"
        files: [
            "EntityLoadManager.cpp",
            "EntityLoadManager.h",
        ]
    }
    Group {
        name: "PartitionGrid"
        files: [
            "PartitionGrid.cpp",
            "PartitionGrid.h",
            "ProximityTriggerSystem.cpp",
            "ProximityTriggerSystem.h",
            "RadixSort.cpp",
            "RadixSort.h",
        ]
    }
    files: [
        "AreaSolid.h",
        "AreaUtil.h",
        "BSPTree3D.h",
        "resource.h",
    ]
}
