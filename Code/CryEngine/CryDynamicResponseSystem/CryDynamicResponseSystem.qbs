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
        name: "Response Actions"
        files: [
            "ActionCancelSignal.cpp",
            "ActionCancelSignal.h",
            "ActionCopyVariable.cpp",
            "ActionCopyVariable.h",
            "ActionExecuteResponse.cpp",
            "ActionExecuteResponse.h",
            "ActionResetTimer.cpp",
            "ActionResetTimer.h",
            "ActionSendSignal.cpp",
            "ActionSendSignal.h",
            "ActionSetActor.cpp",
            "ActionSetActor.h",
            "ActionSetGameToken.cpp",
            "ActionSetGameToken.h",
            "ActionSetVariable.cpp",
            "ActionSetVariable.h",
            "ActionSpeakLine.cpp",
            "ActionSpeakLine.h",
            "ActionWait.cpp",
            "ActionWait.h",
            "DelayActionAction.cpp",
            "DelayActionAction.h",
        ]
    }
    Group {
        name: "Response Conditions"
        files: [
            "ConditionImpl.cpp",
            "ConditionImpl.h",
            "ConditionsCollection.cpp",
            "ConditionsCollection.h",
            "SpecialConditionsImpl.cpp",
            "SpecialConditionsImpl.h",
        ]
    }
    Group {
        name: "Response Variables"
        files: [
            "Variable.cpp",
            "Variable.h",
            "VariableCollection.cpp",
            "VariableCollection.h",
            "VariableValue.cpp",
            "VariableValue.h",
        ]
    }
    Group {
        name: "Responses"
        files: [
            "Response.cpp",
            "Response.h",
            "ResponseInstance.cpp",
            "ResponseInstance.h",
            "ResponseManager.cpp",
            "ResponseManager.h",
            "ResponseSegment.cpp",
            "ResponseSegment.h",
            "ResponseSystemDataImportHelper.cpp",
            "ResponseSystemDataImportHelper.h",
        ]
    }
    files: [
        "CryDynamicResponseSystem.cpp",
        "DialogLineDatabase.cpp",
        "DialogLineDatabase.h",
        "ResponseSystem.cpp",
        "ResponseSystem.h",
        "ResponseSystemDebugDataProvider.cpp",
        "ResponseSystemDebugDataProvider.h",
        "SchematycEntityDrsComponent.cpp",
        "SchematycEntityDrsComponent.h",
        "SpeakerManager.cpp",
        "SpeakerManager.h",
        "resource.h",
    ]
}
