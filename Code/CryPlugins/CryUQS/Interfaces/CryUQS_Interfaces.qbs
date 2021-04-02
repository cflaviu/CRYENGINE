import qbs 1.0

DynamicLibrary {
    Depends { name: 'cpp' }
    cpp.cxxLanguageVersion: "c++17"
    cpp.enableRtti: false
    cpp.discardUnusedData: true
    cpp.defines: [
        "CRY_PLATFORM_LINUX",
    ]
    cpp.includePaths: [
        ".",
    ]
    cpp.systemIncludePaths: [

    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    //Group {
    //    name: "PCH"
    //    files: ["StdAfx.h"]
    //    fileTags: ["cpp_pch_src"]
    //}
    Group {
        name: "client"
        prefix: "client/"
        files: [
            "IDeferredEvaluator.h",
            "IDeferredEvaluatorFactory.h",
            "IFunction.h",
            "IFunctionFactory.h",
            "IGenerator.h",
            "IGeneratorFactory.h",
            "IInputParameterRegistry.h",
            "IInstantEvaluator.h",
            "IInstantEvaluatorFactory.h",
            "IItemConverter.h",
            "IItemFactory.h",
            "IItemMonitor.h",
            "IParamsHolder.h",
            "IQueryBlueprintRuntimeParamVisitor.h",
            "IQueryFinishedListener.h",
            "IQueryVisitor.h",
            "IQueryWarningListener.h",
            "QueryRequest.h",
        ]
    }
    Group {
        name: "core"
        prefix: "core/"
        files: [
            "IDebugMessageCollection.h",
            "IDebugRenderWorld.h",
            "IDeferredEvaluatorFactoryDatabase.h",
            "IEditorService.h",
            "IFactoryDatabase.h",
            "IFunctionFactoryDatabase.h",
            "IGeneratorBlueprint.h",
            "IGeneratorFactoryDatabase.h",
            "IGlobalConstantParamsBlueprint.h",
            "IGlobalRuntimeParamsBlueprint.h",
            "IHub.h",
            "IHubPlugin.h",
            "IInputBlueprint.h",
            "IInstantEvaluatorFactoryDatabase.h",
            "IItemDebugProxies.h",
            "IItemDebugProxyFactory.h",
            "IItemFactoryDatabase.h",
            "IItemList.h",
            "IItemSerializationSupport.h",
            "ILeafFunctionReturnValue.h",
            "IQueryBlueprint.h",
            "IQueryBlueprintLibrary.h",
            "IQueryFactory.h",
            "IQueryHistoryConsumer.h",
            "IQueryHistoryListener.h",
            "IQueryHistoryManager.h",
            "IQueryManager.h",
            "IQueryResultSet.h",
            "IScoreTransformFactory.h",
            "ISettingsManager.h",
            "ITextualEvaluatorBlueprint.h",
            "ITimeBudget.h",
            "IUtils.h",
            "ItemEvaluationResult.h",
            "ItemIterationContext.h",
            "QueryBlueprintID.h",
            "QueryContext.h",
            "QueryID.h",
            "QueryResult.h",
        ]
    }
    Group {
        name: "datasource"
        prefix: "datasource/"
        files: [
            "IEditorLibraryProvider.h",
            "IQueryBlueprintLoader.h",
            "IQueryBlueprintSaver.h",
            "ISyntaxErrorCollector.h",
        ]
    }
    Group {
        name: "editor"
        prefix: "editor/"
        files: [
            "IEditorServiceConsumer.h",
        ]
    }
    Group {
        name: "shared"
        prefix: "shared/"
        files: [
            "DataTypeHelper.h",
            "GUIDHelper.h",
            "IUqsString.h",
            "IVariantDict.h",
            "TypeInfo.h",
        ]
    }
    files: [
        "InterfacesIncludes.h",
        "Prerequisites.h",
    ]
}
