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
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CrySchematyc/Core/Interface",
        "../../CryPlugins/CryDefaultEntities/Module",
        "../../SDKs",
        "../../SDKs/boost",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "Header Files"
        files: [
            "CallbackRequestData.h",
            "Common.h",
            "CVars.h",
            "Debug.h",
            "Entity.h",
            "EventListenerManager.h",
            "File.h",
            "FileCacheManager.h",
            "Impl.h",
            "Listener.h",
            "ListenerManager.h",
            "ListenerRequestData.h",
            "MainThread.h",
            "Managers.h",
            "Object.h",
            "ObjectRequestData.h",
            "OcclusionInfo.h",
            "PropagationProcessor.h",
            "RayInfo.h",
            "Request.h",
            "RequestData.h",
            "resource.h",
            "System.h",
            "SystemRequestData.h",
            "XMLProcessor.h",
        ]
    }
    Group {
        name: "Header Files / Controls"
        files: [
            "Environment.h",
            "Parameter.h",
            "PreloadRequest.h",
            "Setting.h",
            "Switch.h",
            "SwitchState.h",
            "Trigger.h",
            "TriggerInstance.h",
            "TriggerUtils.h",
        ]
    }
    Group {
        name: "Header Files / DefaultControls"
        files: [
            "GetFocusTrigger.h",
            "LoseFocusTrigger.h",
            "MuteAllTrigger.h",
            "PauseAllTrigger.h",
            "PreviewTrigger.h",
            "ResumeAllTrigger.h",
            "UnmuteAllTrigger.h",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "Common.cpp",
            "CryAudioSystem.cpp",
            "CVars.cpp",
            "EventListenerManager.cpp",
            "FileCacheManager.cpp",
            "Impl.cpp",
            "Listener.cpp",
            "ListenerManager.cpp",
            "MainThread.cpp",
            "Managers.cpp",
            "Object.cpp",
            "PropagationProcessor.cpp",
            "RequestData.cpp",
            "System.cpp",
            "XMLProcessor.cpp",
        ]
    }
    Group {
        name: "Source Files / Controls"
        files: [
            "Environment.cpp",
            "Parameter.cpp",
            "PreloadRequest.cpp",
            "Setting.cpp",
            "Switch.cpp",
            "SwitchState.cpp",
            "Trigger.cpp",
            "TriggerInstance.cpp",
            "TriggerUtils.cpp",
        ]
    }
    Group {
        name: "Source Files / DefaultControls"
        files: [
            "GetFocusTrigger.cpp",
            "LoseFocusTrigger.cpp",
            "MuteAllTrigger.cpp",
            "PauseAllTrigger.cpp",
            "PreviewTrigger.cpp",
            "ResumeAllTrigger.cpp",
            "UnmuteAllTrigger.cpp",
        ]

    }
}
