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
        "../../SDKs",
        "../../SDKs/LibTomCrypt/src/headers",
        "../../SDKs/LibTomMath",
        "../../SDKs/boost",
        "../../SDKs/speex-1.0.5/include",
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
        files: ["StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "Protocol"
        prefix: "Protocol/"
        files: [
            "BandwidthCalculator.cpp",
            "BandwidthCalculator.h",
            "CTPEndpoint.cpp",
            "CTPEndpoint.h",
            "ExponentialKeyExchange.cpp",
            "ExponentialKeyExchange.h",
            "FrameTypes.cpp",
            "FrameTypes.h",
            "ICTPEndpointListener.h",
            "INubMember.h",
            "MessageMapper.cpp",
            "MessageMapper.h",
            "MessageQueue.cpp",
            "MessageQueue.h",
            "NetChannel.cpp",
            "NetChannel.h",
            "NetChannelSecurity.cpp",
            "NetChannelSecurity.h",
            "NetNub.cpp",
            "NetNub.h",
            "NewMessageQueue.cpp",
            "NewMessageQueue.h",
            "NullSendable.cpp",
            "NullSendable.h",
            "PMTUDiscovery.cpp",
            "PMTUDiscovery.h",
            "PacketRateCalculator.cpp",
            "PacketRateCalculator.h",
            "Serialize.cpp",
            "Serialize.h",
            "StatsCollector.cpp",
            "StatsCollector.h",
        ]
    }
    Group {
        name: "Socket Library"
        prefix: "Socket/"
        files: [
            "CompositeDatagramSocket.cpp",
            "CompositeDatagramSocket.h",
            "IDatagramSocket.cpp",
            "IDatagramSocket.h",
            "ISocketIOManager.cpp",
            "ISocketIOManager.h",
            "IStreamSocket.cpp",
            "IStreamSocket.h",
            "InternetSimulatorSocket.cpp",
            "InternetSimulatorSocket.h",
            "LocalDatagramSocket.cpp",
            "LocalDatagramSocket.h",
            "NetResolver.cpp",
            "NetResolver.h",
            "SocketError.cpp",
            "SocketError.h",
            "SocketIOManagerIOCP.cpp",
            "SocketIOManagerIOCP.h",
            "SocketIOManagerLobbyIDAddr.cpp",
            "SocketIOManagerLobbyIDAddr.h",
            "SocketIOManagerNull.h",
            "SocketIOManagerSelect.cpp",
            "SocketIOManagerSelect.h",
            "TCPStreamSocket.cpp",
            "TCPStreamSocket.h",
            "UDPDatagramSocket.cpp",
            "UDPDatagramSocket.h",
            "WatchdogTimer.cpp",
            "WatchdogTimer.h",
        ]
    }
    Group {
        name: "Compression"
        prefix: "Compression/"
        files: [
            "AdaptiveBoolPolicy.cpp",
            "AdaptiveBoolPolicy2.cpp",
            "AdaptiveFloat.cpp",
            "AdaptiveFloat.h",
            "AdaptiveFloatPolicy.cpp",
            "AdaptiveOrientationPolicy.cpp",
            "AdaptiveUnitVec3Policy.cpp",
            "AdaptiveVec3Policy.cpp",
            "AdaptiveVelocity.cpp",
            "AdaptiveVelocity.h",
            "AdaptiveVelocityPolicy.cpp",
            "ArithAlphabet.cpp",
            "ArithAlphabet.h",
            "ArithModel.cpp",
            "ArithModel.h",
            "ArithPrimitives.cpp",
            "ArithPrimitives.h",
            "BiggerOrSmallerPolicy.cpp",
            "BoolCompress.cpp",
            "BoolCompress.h",
            "BoolCompress2.cpp",
            "BoolCompress2.h",
            "CompressionManager.cpp",
            "CompressionManager.h",
            "CompressionPolicyTime.h",
            "DefaultPolicy.cpp",
            "EntityIdPolicy.cpp",
            "ErrorDistributionEncoding.cpp",
            "ErrorDistributionEncoding.h",
            "FloatAsIntPolicy.cpp",
            "GaussianEncoding.cpp",
            "GaussianEncoding.h",
            "GaussianEncoding_SlotData.h",
            "ICompressionPolicy.h",
            "ICompressionPolicy2.h",
            "Int64Policy.cpp",
            "IntegerValuePredictor.cpp",
            "IntegerValuePredictor.h",
            "JumpyPolicy.cpp",
            "NoSendPolicy.cpp",
            "OwnChannelCompressionPolicy.cpp",
            "OwnChannelCompressionPolicy.h",
            "PredictiveBase.h",
            "PredictiveFloat.cpp",
            "PredictiveFloat.h",
            "PredictiveFloatTracker.cpp",
            "PredictiveFloatTracker.h",
            "QuantizedVec3.cpp",
            "Quantizer.cpp",
            "Quantizer.h",
            "RangedIntPolicy.cpp",
            "RangedIntPolicy.h",
            "RangedUnsignedIntPolicy.cpp",
            "RangedUnsignedIntPolicy.h",
            "SegmentedCompressionSpace.cpp",
            "SegmentedCompressionSpace.h",
            "SerializationChunk.cpp",
            "SerializationChunk.h",
            "StationaryInteger.cpp",
            "StationaryInteger.h",
            "StationaryUnsignedInteger.cpp",
            "StationaryUnsignedInteger.h",
            "StringTable.cpp",
            "StringTable.h",
            "StringTablePolicy.cpp",
            "TimePolicy.cpp",
            "TimePolicy.h",
            "TimePolicyWithDistribution.cpp",
            "TimePolicyWithDistribution.h",
            "Vec3TableCompressor.cpp",
        ]
    }
    Group {
        name: "Streams"
        prefix: "Streams/"
        files: [
            "ArithStream.h",
            "ByteStream.cpp",
            "ByteStream.h",
            "CommStream.h",
            "CompressingStream.cpp",
            "CompressingStream.h",
            "SimpleInputStream.cpp",
            "SimpleInputStream.h",
            "SimpleOutputStream.cpp",
            "SimpleOutputStream.h",
            "SimpleStreamDefs.h",
        ]
    }
    Group {
        name: "Cryptography"
        prefix: "Cryptography/"
        files: [
            "CngCrypto.cpp",
            "CngCrypto.h",
            "StreamCipher.cpp",
            "StreamCipher.h",
            "TomCryptCrypto.cpp",
            "TomCryptCrypto.h",
            "Whirlpool.cpp",
            "Whirlpool.h",
            "rijndael.cpp",
            "rijndael.h",
        ]
    }
    Group {
        name: "Main"
        files: [
            "AutoFreeHandle.h",
            "Config.h",
            "CryNetwork.cpp",
            "DistributedLogger.cpp",
            "DistributedLogger.h",
            "Errors.h",
            "FixedSizeArena.h",
            "INetworkMember.h",
            "INetworkPrivate.h",
            "MementoMemoryManager.cpp",
            "MementoMemoryManager.h",
            "NetCVars.cpp",
            "NetCVars.h",
            "NetLog.cpp",
            "NetLog.h",
            "NetTimer.cpp",
            "NetTimer.h",
            "Network.cpp",
            "Network.h",
            "PolymorphicQueue.h",
            "STLMementoAllocator.h",
            "Utils.cpp",
            "Utils.h",
            "WorkQueue.cpp",
            "WorkQueue.h",
            "objcnt.h",
            "objcnt_defs.h",
        ]
    }
    Group {
        name: "RCon"
        prefix: "RemoteControl/"
        files: [
            "Protocol.h",
            "RemoteControl.cpp",
            "RemoteControl.h",
        ]
    }
    Group {
        name: "Context"
        prefix: "Context/"
        files: [
            "Authentication.cpp",
            "Authentication.h",
            "BreakagePlayback.cpp",
            "BreakagePlayback.h",
            "CET_Server.cpp",
            "CET_Server.h",
            "ChangeList.h",
            "ClientContextView.cpp",
            "ClientContextView.h",
            "ContextEstablisher.cpp",
            "ContextEstablisher.h",
            "ContextView.cpp",
            "ContextView.h",
            "ContextViewStateManager.cpp",
            "ContextViewStateManager.h",
            "DemoDefinitions.h",
            "DemoPlaybackListener.cpp",
            "DemoPlaybackListener.h",
            "DemoRecordListener.cpp",
            "DemoRecordListener.h",
            "IContextViewExtension.h",
            "INetContextListener.h",
            "INetContextState.h",
            "NetContext.cpp",
            "NetContext.h",
            "NetContextState.cpp",
            "NetContextState.h",
            "PerformBreakage.cpp",
            "PerformBreakage.h",
            "RMILogger.h",
            "ServerContextView.cpp",
            "ServerContextView.h",
            "SessionID.cpp",
            "SessionID.h",
            "SyncContext.h",
            "SyncedFile.cpp",
            "SyncedFile.h",
            "SyncedFilePak.cpp",
            "SyncedFilePak.h",
            "SyncedFileSet.cpp",
            "SyncedFileSet.h",
            "UpdateAspectDataContext.cpp",
            "UpdateAspectDataContext.h",
            "UpdateMessage.cpp",
            "UpdateMessage.h",
        ]
    }
    Group {
        name: "Context / History"
        prefix: "Context/History/"
        files: [
            "AuthorityHistory.cpp",
            "AuthorityHistory.h",
            "ConfigurationHistory.cpp",
            "ConfigurationHistory.h",
            "History.cpp",
            "History.h",
            "MementoHistory.cpp",
            "MementoHistory.h",
            "ProfileHistory.cpp",
            "ProfileHistory.h",
            "RegularlySyncedItem.cpp",
            "RegularlySyncedItem.h",
        ]
    }
    Group {
        name: "Services"
        prefix: "Services/"
        files: [
            "NetworkACL/NetProfileTokens.cpp",
            "NetworkACL/NetProfileTokens.h",
            "ServiceManager.cpp",
            "ServiceManager.h",
        ]
    }
    Group {
        name: "Services / CryLAN"
        prefix: "Services/CryLAN/"
        files: [
            "LanQueryListener.cpp",
            "LanQueryListener.h",
        ]
    }
    Group {
        name: "Debug Kit"
        prefix: "DebugKit/"
        files: [
            "DebugKit.cpp",
            "DebugKit.h",
            "DebugOutput.cpp",
            "DebugOutput.h",
            "Encoding.cpp",
            "Encoding.h",
            "NetVis.cpp",
            "NetVis.h",
            "NetworkInspector.cpp",
            "NetworkInspector.h",
        ]
    }
    Group {
        name: "Http"
        prefix: "Http/"
        files: [
            "AutoConfigDownloader.cpp",
            "AutoConfigDownloader.h",
            "SimpleHttpServer.cpp",
            "SimpleHttpServer.h",
            "cry_sha1.cpp",
            "cry_sha1.h",
        ]
    }
    Group {
        name: "VOIP"
        files: [
            "Context/VoiceContext.cpp",
            "Context/VoiceContext.h",
            "VOIP/IVoiceDecoder.cpp",
            "VOIP/IVoiceDecoder.h",
            "VOIP/IVoiceEncoder.cpp",
            "VOIP/IVoiceEncoder.h",
            "VOIP/IVoicePacketListener.h",
            "VOIP/SpeexCodec.cpp",
            "VOIP/VoiceManager.cpp",
            "VOIP/VoiceManager.h",
            "VOIP/VoicePacket.cpp",
            "VOIP/VoicePacket.h",
        ]
    }
    Group {
        name: "Debug"
        files: [
            "NetDebugChannelViewer.cpp",
            "NetDebugChannelViewer.h",
            "NetDebugInfo.cpp",
            "NetDebugInfo.h",
            "NetDebugInternetSimulator.cpp",
            "NetDebugInternetSimulator.h",
            "NetDebugProfileViewer.cpp",
            "NetDebugProfileViewer.h",
            "NetDebugServerInfo.cpp",
            "NetDebugServerInfo.h",
            "NetDebugTrafficBandwidth.cpp",
            "NetDebugTrafficBandwidth.h",
            "NetProfile.cpp",
            "NetProfile.h",
        ]
    }
    files: [
        "resource.h",
    ]
}
