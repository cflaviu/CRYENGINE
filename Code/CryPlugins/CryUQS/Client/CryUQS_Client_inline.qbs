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
            "ContainedTypeRetriever.h",
            "DeferredEvaluatorBase.h",
            "DeferredEvaluatorFactory.h",
            "FactoryRegistrationHelper.h",
            "Func_GlobalParam.h",
            "Func_IteratedItem.h",
            "Func_Literal.h",
            "Func_ShuttledItems.h",
            "FunctionBase.h",
            "FunctionFactory.h",
            "Gen_PropagateShuttledItems.h",
            "GeneratorBase.h",
            "GeneratorFactory.h",
            "InputParameterRegistry.h",
            "InstantEvaluatorBase.h",
            "InstantEvaluatorFactory.h",
            "ItemConverter.h",
            "ItemFactory.h",
            "ItemListProxy.h",
            "ParamsHolder.h",
            "QueryHost.h",
            "TypeWrapper.h",
        ]
    }
    files: [
        "ClientIncludes.h",
    ]
}
