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
        "../CrySchematynnmc/Core/Impl",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        prefix: "Core/Impl/"
        files: ["StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "Impl / Compiler"
        prefix: "Core/Impl/Compiler/"
        files: [
            "Compiler.cpp",
            "Compiler.h",
            "CompilerTaskList.cpp",
            "CompilerTaskList.h",
        ]
    }
    Group {
        name: "Impl / CoreEnv"
        prefix: "Core/Impl/CoreEnv/"
        files: [
            "CoreEnv.cpp",
            "CoreEnv.h",
            "CoreEnvSignals.cpp",
            "CoreEnvSignals.h",
        ]
    }
    Group {
        name: "Impl / CoreEnv / Functions"
        prefix: "Core/Impl/CoreEnv/Functions/"
        files: [
            "BasicFunctions.cpp",
            "CameraFunctions.cpp",
            "LogFunctions.cpp",
            "MathFunctions.cpp",
        ]
    }
    Group {
        name: "Impl / CoreEnv / Types"
        prefix: "Core/Impl/CoreEnv/Types/"
        files: [
            "BasicTypes.cpp",
            "MathTypes.cpp",
            "ResourceTypes.cpp",
        ]
    }
    Group {
        name: "Impl / Env"
        prefix: "Core/Impl/Env/"
        files: [
            "EnvRegistry.cpp",
            "EnvRegistry.h",
        ]
    }
    Group {
        name: "Impl / Runtime"
        prefix: "Core/Impl/Runtime/"
        files: [
            "RuntimeClass.cpp",
            "RuntimeClass.h",
            "RuntimeRegistry.cpp",
            "RuntimeRegistry.h",
        ]
    }
    Group {
        name: "Impl / Script"
        prefix: "Core/Impl/Script/"
        files: [
            "Script.cpp",
            "Script.h",
            "ScriptElementBase.h",
            "ScriptElementFactory.cpp",
            "ScriptElementFactory.h",
            "ScriptEnumValue.cpp",
            "ScriptEnumValue.h",
            "ScriptExtensionMap.cpp",
            "ScriptExtensionMap.h",
            "ScriptParam.cpp",
            "ScriptParam.h",
            "ScriptRegistry.cpp",
            "ScriptRegistry.h",
            "ScriptSerializers.cpp",
            "ScriptSerializers.h",
            "ScriptStructValue.cpp",
            "ScriptStructValue.h",
            "ScriptUserDocumentation.cpp",
            "ScriptUserDocumentation.h",
            "ScriptVariableData.cpp",
            "ScriptVariableData.h",
            "ScriptView.cpp",
            "ScriptView.h",
        ]
    }
    Group {
        name: "Impl / Script / Elements"
        prefix: "Core/Impl/Script/Elements/"
        files: [
            "ScriptActionInstance.cpp",
            "ScriptActionInstance.h",
            "ScriptBase.cpp",
            "ScriptBase.h",
            "ScriptClass.cpp",
            "ScriptClass.h",
            "ScriptComponentInstance.cpp",
            "ScriptComponentInstance.h",
            "ScriptConstructor.cpp",
            "ScriptConstructor.h",
            "ScriptEnum.cpp",
            "ScriptEnum.h",
            "ScriptFunction.cpp",
            "ScriptFunction.h",
            "ScriptInterface.cpp",
            "ScriptInterface.h",
            "ScriptInterfaceFunction.cpp",
            "ScriptInterfaceFunction.h",
            "ScriptInterfaceImpl.cpp",
            "ScriptInterfaceImpl.h",
            "ScriptInterfaceTask.cpp",
            "ScriptInterfaceTask.h",
            "ScriptModule.cpp",
            "ScriptModule.h",
            "ScriptRoot.cpp",
            "ScriptRoot.h",
            "ScriptSignal.cpp",
            "ScriptSignal.h",
            "ScriptSignalReceiver.cpp",
            "ScriptSignalReceiver.h",
            "ScriptState.cpp",
            "ScriptState.h",
            "ScriptStateMachine.cpp",
            "ScriptStateMachine.h",
            "ScriptStruct.cpp",
            "ScriptStruct.h",
            "ScriptTimer.cpp",
            "ScriptTimer.h",
            "ScriptVariable.cpp",
            "ScriptVariable.h",
        ]
    }
    Group {
        name: "Impl / Script / Graph"
        prefix: "Core/Impl/Script/Graph/"
        files: [
            "ScriptGraph.cpp",
            "ScriptGraph.h",
            "ScriptGraphNode.cpp",
            "ScriptGraphNode.h",
            "ScriptGraphNodeFactory.cpp",
            "ScriptGraphNodeFactory.h",
            "ScriptGraphNodeModel.cpp",
            "ScriptGraphNodeModel.h",
        ]
    }
    Group {
        name: "Impl / Script / Graph / Nodes"
        prefix: "Core/Impl/Script/Graph/Nodes/"
        files: [
            "ScriptGraphActionNode.cpp",
            "ScriptGraphActionNode.h",
            "ScriptGraphArrayAddNode.cpp",
            "ScriptGraphArrayAddNode.h",
            "ScriptGraphArrayForEachNode.cpp",
            "ScriptGraphArrayForEachNode.h",
            "ScriptGraphArrayRemoveByValueNode.cpp",
            "ScriptGraphArrayRemoveByValueNode.h",
            "ScriptGraphBeginNode.cpp",
            "ScriptGraphBeginNode.h",
            "ScriptGraphBranchNode.cpp",
            "ScriptGraphBranchNode.h",
            "ScriptGraphExpandSignalNode.cpp",
            "ScriptGraphExpandSignalNode.h",
            "ScriptGraphForNode.cpp",
            "ScriptGraphForNode.h",
            "ScriptGraphFormatStringNode.cpp",
            "ScriptGraphFormatStringNode.h",
            "ScriptGraphFunctionNode.cpp",
            "ScriptGraphFunctionNode.h",
            "ScriptGraphGetEntityIdNode.cpp",
            "ScriptGraphGetEntityIdNode.h",
            "ScriptGraphGetNode.cpp",
            "ScriptGraphGetNode.h",
            "ScriptGraphGetObjectIdNode.cpp",
            "ScriptGraphGetObjectIdNode.h",
            "ScriptGraphReceiveSignalNode.cpp",
            "ScriptGraphReceiveSignalNode.h",
            "ScriptGraphReturnNode.cpp",
            "ScriptGraphReturnNode.h",
            "ScriptGraphSendSignalNode.cpp",
            "ScriptGraphSendSignalNode.h",
            "ScriptGraphSequenceNode.cpp",
            "ScriptGraphSequenceNode.h",
            "ScriptGraphSetNode.cpp",
            "ScriptGraphSetNode.h",
            "ScriptGraphStateNode.cpp",
            "ScriptGraphStateNode.h",
            "ScriptGraphSwitchNode.cpp",
            "ScriptGraphSwitchNode.h",
        ]
    }
    Group {
        name: "Impl / SerializationUtils"
        prefix: "Core/Impl/SerializationUtils/"
        files: [
            "SerializationContext.cpp",
            "SerializationContext.h",
            "ValidatorArchive.cpp",
            "ValidatorArchive.h",
        ]
    }
    Group {
        name: "Impl / Services"
        prefix: "Core/Impl/Services/"
        files: [
            "Log.cpp",
            "Log.h",
            "LogRecorder.cpp",
            "LogRecorder.h",
            "SettingsManager.cpp",
            "SettingsManager.h",
            "TimerSystem.cpp",
            "TimerSystem.h",
            "UpdateScheduler.cpp",
            "UpdateScheduler.h",
        ]
    }
    Group {
        name: "Impl / UnitTests"
        prefix: "Core/Impl/UnitTests/"
        files: [
            "ReflectionUnitTests.cpp",
            "RuntimeUnitTests.cpp",
            "StringUnitTests.cpp",
            "UnitTestRegistrar.cpp",
            "UnitTestRegistrar.h",
        ]
    }
    Group {
        name: "Impl / Utils"
        prefix: "Core/Impl/Utils/"
        files: [
            "FileUtils.cpp",
            "FileUtils.h",
            "GUIDRemapper.cpp",
            "GUIDRemapper.h",
            "InterfaceMap.h",
        ]
    }
    Group {
        name: "Impl"
        prefix: "Core/Impl/"
        files: [
            "CVars.cpp",
            "CVars.h",
            "Core.cpp",
            "Core.h",
            "Object.cpp",
            "Object.h",
            "ObjectPool.cpp",
            "ObjectPool.h",
            "ObjectProperties.cpp",
            "ObjectProperties.h",
            "resource.h",
        ]
    }
}
