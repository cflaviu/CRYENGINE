import qbs 1.0

DynamicLibrary {
    Depends { name: 'cpp' }
    cpp.cxxLanguageVersion: "c++17"
    cpp.enableRtti: false
    cpp.discardUnusedData: true
    cpp.defines: [
        "CRY_PLATFORM_LINUX",
        "UQS_SCHEMATYC_SUPPORT=1",
    ]
    cpp.includePaths: [
        ".",
    ]
    cpp.systemIncludePaths: [
        "../../../CryEngine/CryCommon",
        "../../../CryEngine/CryCommon/3rdParty",
        "../../../CryEngine/CrySchematyc/Core/Interface",
        "../../../CryEngine/CrySchematyc/STDEnv/Interface",
        "../../../CryPlugins",
        "../../../CryPlugins/CryUQS/Core",
        "../../../CryPlugins/CryUQS/Core/core",
        "../../../SDKs/boost",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["core/StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "core"
        prefix: "core/"
        files: [
            "BlueprintWithInputs.cpp",
            "BlueprintWithInputs.h",
            "Cvars.cpp",
            "Cvars.h",
            "DebugMessageCollection.cpp",
            "DebugMessageCollection.h",
            "DebugRenderPrimitives.cpp",
            "DebugRenderPrimitives.h",
            "DebugRenderWorld.cpp",
            "DebugRenderWorld.h",
            "DeferredEvaluatorBlueprint.cpp",
            "DeferredEvaluatorBlueprint.h",
            "DeferredEvaluatorFactoryDatabase.h",
            "DrawUtil2d.cpp",
            "DrawUtil2d.h",
            "EditorService.cpp",
            "EditorService.h",
            "EvaluationResultTransform.cpp",
            "EvaluationResultTransform.h",
            "EvaluatorBlueprintBase.cpp",
            "EvaluatorBlueprintBase.h",
            "FactoryDatabase.h",
            "FunctionBlueprint.cpp",
            "FunctionBlueprint.h",
            "FunctionCallHierarchy.cpp",
            "FunctionCallHierarchy.h",
            "FunctionFactoryDatabase.h",
            "GeneratorBlueprint.cpp",
            "GeneratorBlueprint.h",
            "GeneratorFactoryDatabase.h",
            "GeomUtil.cpp",
            "GeomUtil.h",
            "GlobalConstantParamsBlueprint.cpp",
            "GlobalConstantParamsBlueprint.h",
            "GlobalRuntimeParamsBlueprint.cpp",
            "GlobalRuntimeParamsBlueprint.h",
            "Hub.cpp",
            "Hub.h",
            "HubPlugin.cpp",
            "InputBlueprint.cpp",
            "InputBlueprint.h",
            "InstantEvaluatorBlueprint.cpp",
            "InstantEvaluatorBlueprint.h",
            "InstantEvaluatorFactoryDatabase.h",
            "ItemDebugProxies.cpp",
            "ItemDebugProxies.h",
            "ItemDebugProxyFactory.cpp",
            "ItemDebugProxyFactory.h",
            "ItemFactoryDatabase.h",
            "ItemList.cpp",
            "ItemList.h",
            "ItemSerializationSupport.cpp",
            "ItemSerializationSupport.h",
            "LeafFunctionReturnValue.cpp",
            "LeafFunctionReturnValue.h",
            "Logger.cpp",
            "Logger.h",
            "QueryBase.cpp",
            "QueryBase.h",
            "QueryBlueprint.cpp",
            "QueryBlueprint.h",
            "QueryBlueprintLibrary.cpp",
            "QueryBlueprintLibrary.h",
            "QueryFactory.cpp",
            "QueryFactory.h",
            "QueryHistory.cpp",
            "QueryHistory.h",
            "QueryHistoryInGameGUI.cpp",
            "QueryHistoryInGameGUI.h",
            "QueryHistoryManager.cpp",
            "QueryHistoryManager.h",
            "QueryManager.cpp",
            "QueryManager.h",
            "QueryResultSet.cpp",
            "QueryResultSet.h",
            "Query_Chained.cpp",
            "Query_Chained.h",
            "Query_Fallbacks.cpp",
            "Query_Fallbacks.h",
            "Query_Regular.cpp",
            "Query_Regular.h",
            "Query_SequentialBase.cpp",
            "Query_SequentialBase.h",
            "SchematycSupport.cpp",
            "SchematycSupport.h",
            "ScoreTransformFactory.cpp",
            "ScoreTransformFactory.h",
            "Serialize.cpp",
            "Serialize.h",
            "SettingsManager.cpp",
            "SettingsManager.h",
            "StartupConsistencyChecker.cpp",
            "StartupConsistencyChecker.h",
            "TextualEvaluatorBlueprint.h",
            "TimeBudget.cpp",
            "TimeBudget.h",
            "Utils.cpp",
            "Utils.h",
        ]
    }
    files: [
        "resource.h",
    ]
}
