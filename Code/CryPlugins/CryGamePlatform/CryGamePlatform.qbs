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
        "../CryGamePlatform/Module/Core",
        "../CryGamePlatform/Module/Core/../../Common",
        "../CryGamePlatform/Module/Core/../../Interface",
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
        name: "Interface"
        prefix: "Interface/"
        files: [
            "IGamePlatform.h",
            "IPlatformAccount.h",
            "IPlatformAchievement.h",
            "IPlatformBase.h",
            "IPlatformLeaderboards.h",
            "IPlatformLobby.h",
            "IPlatformMatchmaking.h",
            "IPlatformNetworking.h",
            "IPlatformRemoteStorage.h",
            "IPlatformServer.h",
            "IPlatformService.h",
            "IPlatformStatistics.h",
            "IPlatformUser.h",
            "IPlatformUserGeneratedContent.h",
            "PlatformIdentifier.h",
            "PlatformTypes.h",
            "PlatformUserIdentifier.h",
        ]
    }
    files: [
        "Module/Core/GamePlatform.cpp",
        "Module/Core/GamePlatform.h",
        "Module/Core/User.cpp",
        "Module/Core/User.h",
        "Module/Core/resource.h",
    ]
}
