import qbs 1.0

Library {
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
    files: [
        "DebugStyle.h",
        "FileInfo.h",
        "IEnvironmentConnection.h",
        "IFile.h",
        "IImpl.h",
        "IListener.h",
        "IObject.h",
        "IParameterConnection.h",
        "ISettingConnection.h",
        "ISwitchStateConnection.h",
        "ITriggerConnection.h",
        "ITriggerInfo.h",
        "Logger.h",
        "PluginPlatform.h",
        "PoolObject.h",
        "PoolObject_impl.h",
    ]
}
