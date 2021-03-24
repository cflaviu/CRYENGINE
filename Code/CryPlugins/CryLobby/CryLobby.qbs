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
        "../../SDKs/speex-1.0.5/include",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryCommon/CryLobby",
        "../CryLobby/Interface",
        "../CryLobby/Module",
        "../CryNetwork",
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
        name: "Steam"
        prefix: "Module/Steam/"
        files: [
            "CrySteamFriends.cpp",
            "CrySteamFriends.h",
            "CrySteamFriendsManagement.cpp",
            "CrySteamFriendsManagement.h",
            "CrySteamLobby.cpp",
            "CrySteamLobby.h",
            "CrySteamMatchMaking.cpp",
            "CrySteamMatchMaking.h",
            "CrySteamReward.cpp",
            "CrySteamReward.h",
            "CrySteamStats.cpp",
            "CrySteamStats.h",
            "CrySteamVoice.h",
        ]
    }
    //Group {
    //    name: "DurangoLive"
    //    prefix: "Module/DurangoLive/"
    //    files: [
    //        "CryDurangoLiveLobby.cpp",
    //        "CryDurangoLiveLobby.h",
    //        "CryDurangoLiveLobbyPacket.h",
    //        "CryDurangoLiveLobbyUI.cpp",
    //        "CryDurangoLiveLobbyUI.h",
    //        "CryDurangoLiveMatchMaking.cpp",
    //        "CryDurangoLiveMatchMaking.h",
    //        "CryDurangoLiveOnlineStorage.cpp",
    //        "CryDurangoLiveOnlineStorage.h",
    //        "DurangoChat/ChatIntegrationLayer.cpp",
    //        "DurangoChat/ChatIntegrationLayer.h",
    //        "platform.cpp",
    //        "platform.h",
    //    ]
    //}
    Group {
        name: "Interface"
        prefix: "Interface/CryLobby/"
        files: [
            "CryLobbyPacket.h",
            "ICryFriends.h",
            "ICryFriendsManagement.h",
            "ICryLobby.h",
            "ICryLobbyEvent.h",
            "ICryLobbyPrivate.h",
            "ICryLobbyUI.h",
            "ICryMatchMaking.h",
            "ICryReward.h",
            "ICrySignIn.h",
            "ICryTCPService.h",
            "ICryVoice.h",
        ]
    }
    Group {
        name: "LAN"
        prefix: "Module/LAN/"
        files: [
            "CryLANLobby.cpp",
            "CryLANLobby.h",
            "CryLANMatchMaking.cpp",
            "CryLANMatchMaking.h",
        ]
    }
    Group {
        name: "Module"
        prefix: "Module/"
        files: [
            "CryDedicatedServer.cpp",
            "CryDedicatedServer.h",
            "CryDedicatedServerArbitrator.cpp",
            "CryDedicatedServerArbitrator.h",
            "CryFriends.cpp",
            "CryFriends.h",
            "CryFriendsManagement.cpp",
            "CryFriendsManagement.h",
            "CryHostMigration.cpp",
            "CryHostMigration.h",
            "CryLobby.cpp",
            "CryLobby.h",
            "CryLobbyUI.cpp",
            "CryLobbyUI.h",
            "CryMatchMaking.cpp",
            "CryMatchMaking.h",
            "CryReward.cpp",
            "CryReward.h",
            "CrySharedLobbyPacket.h",
            "CrySignIn.cpp",
            "CrySignIn.h",
            "CryStats.cpp",
            "CryStats.h",
            "CryTCPService.cpp",
            "CryTCPService.h",
            "CryTCPServiceFactory.cpp",
            "CryTCPServiceFactory.h",
            "CryVoice.cpp",
            "CryVoice.h",
            "LobbyCVars.cpp",
            "LobbyCVars.h",
            "resource.h",
        ]
    }
}
