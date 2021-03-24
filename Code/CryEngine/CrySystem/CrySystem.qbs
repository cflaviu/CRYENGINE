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
        "../../SDKs/Brofiler",
        "../../SDKs/CrashRpt/1403/include",
        "../../SDKs/Detours/4.0.1/src",
        "../../SDKs/LibTomCrypt/src/headers",
        "../../SDKs/LibTomMath",
        "../../SDKs/boost",
        "../../SDKs/expat-2.1.0/lib",
        "../../SDKs/lz4/lib",
        "../../SDKs/zlib-1.2.11",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CrySchematyc/Core/Interface",
        "../CrySystem",
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
        name: "Scaleform"
        prefix: "Scaleform/"
        files: [
            "ScaleformHelper.cpp",
            "ScaleformHelper.h",
            "ScaleformRecording.cpp",
            "ScaleformRecording.h",
        ]
    }
    Group {
        name: "Scaleform"
        prefix: "Scaleform/"
        files: [
            "FlashPlayerInstance.cpp",
            "FlashPlayerInstance.h",
            "GAllocatorCryMem.cpp",
            "GAllocatorCryMem.h",
            "GFileCryPak.cpp",
            "GFileCryPak.h",
            "GFxVideoSoundCrySound.cpp",
            "GFxVideoSoundCrySound.h",
            "GFxVideoWrapper.cpp",
            "GFxVideoWrapper.h",
            "GImageInfo_Impl.cpp",
            "GImageInfo_Impl.h",
            "GImeHelper.cpp",
            "GImeHelper.h",
            "GTexture_Impl.cpp",
            "GTexture_Impl.h",
            "SharedResources.cpp",
            "SharedResources.h",
            "SharedStates.cpp",
            "SharedStates.h",
        ]
    }
    //Group {
    //    name: "MemoryManager"
    //    files: [
    //        "CryMemoryManager_sce.h",
    //    ]
    //}
    //Group {
    //    name: "Threading"
    //    files: [
    //        "CryThreadUtil_sce.h",
    //    ]
    //}
    //Group {
    //    name: "Windows / Threading"
    //    prefix: "Threading/"
    //    files: [
    //        "CryThreadUtil_win32.h",
    //    ]
    //}
    //Group {
    //    name: "Source Files"
    //    files: [
    //        "MemReplay_Orbis.cpp",
    //    ]
    //}
    //Group {
    //    name: "Source Files"
    //    files: [
    //        "OrbisDebugCallStack.cpp",
    //    ]
    //}
    //Group {
    //    name: "Profiling"
    //    prefix: "Profiling/"
    //    files: [
    //        "PlatformProfiler_orbis.cpp",
    //    ]
    //}
    //Group {
    //    name: "PlatformOS"
    //    prefix: "PlatformOS/"
    //    files: [
    //        "PlatformOS_Orbis.cpp",
    //        "PlatformOS_Orbis.h",
    //    ]
    //}
    Group {
        name: "Linux / Threading"
        files: [
            "CryThreadUtil_posix.h",
        ]
    }
    Group {
        name: "Header Files"
        files: [
            "BootProfiler.h",
            "BudgetingSystem.h",
            "CPUDetect.h",
            "CmdLine.h",
            "CmdLineArg.h",
            "ConsoleBatchFile.h",
            "ConsoleHelpGen.h",
            "CryPak.h",
            "CryPakHandleCache.h",
            "CrySizerImpl.h",
            "CrySizerStats.h",
            "CryWaterMark.h",
            "DebugCallStack.h",
            "GeneralMemoryHeap.h",
            "HardwareMouse.h",
            "HotUpdate.h",
            "IDebugCallStack.h",
            "Log.h",
            "ManualFrameStep.h",
            "NotificationNetwork.h",
            "PakVars.h",
            "PlatformOS/PatternMatcher.h",
            "Serialization/ArchiveHost.h",
            "SimpleStringPool.h",
            "Statistics/LocalMemoryUsage.h",
            "System.h",
            "SystemCFG.h",
            "SystemEventDispatcher.h",
            "SystemInit.h",
            "Timer.h",
            "Validator.h",
            "XConsole.h",
            "XConsoleVariable.h",
            "XML/ReadWriteXMLSink.h",
            "resource.h",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "AVI_Reader.cpp",
            "AsyncPakManager.cpp",
            "AutoDetectCPUTestSuit.cpp",
            "AutoDetectSpec.cpp",
            "BootProfiler.cpp",
            "BudgetingSystem.cpp",
            "CPUDetect.cpp",
            "ClientHandler.cpp",
            "CmdLine.cpp",
            "CmdLineArg.cpp",
            "CompressedFile.cpp",
            "ConsoleBatchFile.cpp",
            "ConsoleHelpGen.cpp",
            "CryArchive.cpp",
            "CryAsyncMemcpy.cpp",
            "CryPak.cpp",
            "CrySizerImpl.cpp",
            "CrySizerStats.cpp",
            "DebugCallStack.cpp",
            "DllMain.cpp",
            "FileIOWrapper.cpp",
            "GeneralMemoryHeap.cpp",
            "HandlerBase.cpp",
            "HardwareMouse.cpp",
            "IDebugCallStack.cpp",
            "JiraClient.cpp",
            "Log.cpp",
            "ManualFrameStep.cpp",
            "MemReplay.cpp",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "AVI_Reader.h",
            "AsyncPakManager.h",
            "AutoDetectCPUTestSuit.h",
            "AutoDetectSpec.h",
            "ClientHandler.h",
            "CryArchive.h",
            "DxDiag.h",
            "FileIOWrapper.h",
            "HandlerBase.h",
            "JiraClient.h",
            "NotificationNetwork.cpp",
            "PhysRenderer.cpp",
            "PhysRenderer.h",
            "ResourceManager.cpp",
            "ResourceManager.h",
            "ServerHandler.cpp",
            "ServerHandler.h",
            "ServerThrottle.cpp",
            "ServerThrottle.h",
            "SimpleStringPool.cpp",
            "SyncLock.cpp",
            "SyncLock.h",
            "System.cpp",
            "SystemCFG.cpp",
            "SystemEventDispatcher.cpp",
            "SystemInit.cpp",
            "SystemRender.cpp",
            "SystemScheduler.cpp",
            "SystemScheduler.h",
            "SystemWin32.cpp",
            "Timer.cpp",
            "UnixConsole.cpp",
            "UnixConsole.h",
            "WindowsConsole.cpp",
            "WindowsConsole.h",
            "XConsole.cpp",
            "XConsoleVariable.cpp",
        ]
    }
    Group {
        name: "MemoryManager"
        files: [
            "CryMemoryManager.cpp",
            "CustomMemoryHeap.cpp",
            "CustomMemoryHeap.h",
            "DefragAllocator.cpp",
            "DefragAllocator.h",
            "MTSafeAllocator.cpp",
            "MTSafeAllocator.h",
            "MemReplay.h",
            "MemoryAddressRange.cpp",
            "MemoryAddressRange.h",
            "MemoryManager.cpp",
            "MemoryManager.h",
            "PageMappingHeap.cpp",
            "PageMappingHeap.h",
        ]
    }
    Group {
        name: "Resource Files"
        files: [
            "crash_face.bmp",
        ]
    }
    Group {
        name: "StreamEngine"
        prefix: "StreamEngine/"
        files: [
            "StreamAsyncFileRequest.cpp",
            "StreamAsyncFileRequest.h",
            "StreamAsyncFileRequest_Jobs.cpp",
            "StreamEngine.cpp",
            "StreamEngine.h",
            "StreamIOThread.cpp",
            "StreamIOThread.h",
            "StreamReadStream.cpp",
            "StreamReadStream.h",
        ]
    }
    Group {
        name: "XML"
        prefix: "XML/"
        files: [
            "SerializeXMLReader.cpp",
            "SerializeXMLReader.h",
            "SerializeXMLWriter.cpp",
            "SerializeXMLWriter.h",
            "XMLBinaryNode.cpp",
            "XMLBinaryNode.h",
            "XMLBinaryReader.cpp",
            "XMLBinaryReader.h",
            "XMLBinaryWriter.cpp",
            "XMLBinaryWriter.h",
            "XMLPatcher.cpp",
            "XMLPatcher.h",
            "XmlUtils.cpp",
            "XmlUtils.h",
            "xml.cpp",
            "xml.h",
            "xml_string.h",
        ]
    }
    Group {
        name: "XML / XMLSink"
        prefix: "XML/"
        files: [
            "ReadXMLSink.cpp",
            "WriteXMLSource.cpp",
        ]
    }
    Group {
        name: "ZipDir"
        files: [
            "ZipDir.h",
            "ZipDirCache.cpp",
            "ZipDirCache.h",
            "ZipDirCacheFactory.cpp",
            "ZipDirCacheFactory.h",
            "ZipDirCacheRW.cpp",
            "ZipDirCacheRW.h",
            "ZipDirFind.cpp",
            "ZipDirFind.h",
            "ZipDirFindRW.cpp",
            "ZipDirFindRW.h",
            "ZipDirList.cpp",
            "ZipDirList.h",
            "ZipDirStructures.cpp",
            "ZipDirStructures.h",
            "ZipDirTree.cpp",
            "ZipDirTree.h",
            "ZipEncrypt.cpp",
            "ZipEncrypt.h",
            "ZipFileFormat.h",
            "ZipFileFormat_info.h",
        ]
    }
    Group {
        name: "HTTPDownloader"
        files: [
            "DownloadManager.cpp",
            "DownloadManager.h",
            "HTTPDownloader.cpp",
            "HTTPDownloader.h",
        ]
    }
    Group {
        name: "Localization"
        files: [
            "LocalizedStringManager.cpp",
            "LocalizedStringManager.h",
        ]
    }
    Group {
        name: "Profiling"
        files: [
            "DiskProfiler.cpp",
            "DiskProfiler.h",
            "DiskProfilerWindowsSpecific.cpp",
            "DiskProfilerWindowsSpecific.h",
            "PerfHUD.cpp",
            "PerfHUD.h",
            "Profiling/CryBrofiler.cpp",
            "Profiling/CryBrofiler.h",
            "Profiling/CryProfilingSystem.cpp",
            "Profiling/CryProfilingSystem.h",
            "Profiling/CryProfilingSystemSharedImpl.cpp",
            "Profiling/CryProfilingSystemSharedImpl.h",
            "Profiling/NullProfiler.cpp",
            "Profiling/NullProfiler.h",
            "Profiling/PlatformProfiler.h",
            "Profiling/ProfilingRenderer.cpp",
            "Profiling/ProfilingRenderer.h",
            "Watchdog.cpp",
            "Watchdog.h",
        ]
    }
    Group {
        name: "Windows"
        files: [
            "WindowsErrorReporting.cpp",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "ImeManager.cpp",
            "ImeManager.h",
        ]
    }
    Group {
        name: "TestSystem"
        files: [
            "ExcelExport.cpp",
            "ExcelExport.h",
            "Statistics.cpp",
            "Statistics.h",
            "TestSystem.cpp",
            "TestSystem.h",
            "UnitTestExcelReporter.cpp",
            "UnitTestExcelReporter.h",
            "VisRegTest.cpp",
            "VisRegTest.h",
        ]
    }
    Group {
        name: "Interprocess"
        prefix: "Interprocess/"
        files: [
            "StatsAgent.cpp",
            "StatsAgent.h",
            "StatsAgentPipe.cpp",
            "StatsAgentPipe.h",
        ]
    }
    Group {
        name: "ExtensionSystem"
        prefix: "ExtensionSystem/"
        files: [
            "CryFactoryRegistryImpl.cpp",
            "CryFactoryRegistryImpl.h",
            "CryPluginManager.cpp",
            "CryPluginManager.h",
        ]
    }
    Group {
        name: "ExtensionSystem / TestCases"
        prefix: "ExtensionSystem/TestCases/"
        files: [
            "TestExtensions.cpp",
            "TestExtensions.h",
        ]
    }
    Group {
        name: "MiniGUI"
        prefix: "MiniGUI/"
        files: [
            "DrawContext.cpp",
            "DrawContext.h",
            "MiniButton.cpp",
            "MiniButton.h",
            "MiniGUI.cpp",
            "MiniGUI.h",
            "MiniInfoBox.cpp",
            "MiniInfoBox.h",
            "MiniMenu.cpp",
            "MiniMenu.h",
            "MiniTable.cpp",
            "MiniTable.h",
        ]
    }
    Group {
        name: "NullImplementation"
        prefix: "NullImplementation/"
        files: [
            "NULLAudioSystems.h",
            "NULLRenderAuxGeom.cpp",
            "NULLRenderAuxGeom.h",
            "NullInput.h",
            "NullLiveCreate.h",
            "NullResponseSystem.h",
        ]
    }
    Group {
        name: "Threading"
        files: [
            "SystemThreading.cpp",
            "ThreadConfigManager.cpp",
            "ThreadConfigManager.h",
            "ThreadInfo.cpp",
            "ThreadInfo.h",
        ]
    }
    Group {
        name: "CodeCoverage"
        prefix: "CodeCoverage/"
        files: [
            "CodeCheckpointMgr.cpp",
            "CodeCheckpointMgr.h",
        ]
    }
    Group {
        name: "PlatformOS"
        prefix: "PlatformOS/"
        files: [
            "SaveReaderWriter_CryPak.cpp",
            "SaveReaderWriter_CryPak.h",
            "SaveReaderWriter_Memory.cpp",
            "SaveReaderWriter_Memory.h",
        ]
    }
    Group {
        name: "Statistics"
        prefix: "Statistics/"
        files: [
            "LocalMemoryUsage.cpp",
        ]
    }
    Group {
        name: "Statoscope"
        files: [
            "Statoscope.cpp",
            "Statoscope.h",
            "StatoscopeStreamingIntervalGroup.cpp",
            "StatoscopeStreamingIntervalGroup.h",
            "StatoscopeTextureStreamingIntervalGroup.cpp",
            "StatoscopeTextureStreamingIntervalGroup.h",
        ]
    }
    Group {
        name: "ZLibCompressor"
        files: [
            "ZLibCompressor.cpp",
            "ZLibCompressor.h",
        ]
    }
    Group {
        name: "HuffmanEncoding"
        files: [
            "Huffman.cpp",
            "Huffman.h",
        ]
    }
    Group {
        name: "JobManager"
        prefix: "JobManager/"
        files: [
            "JobManager.cpp",
            "JobManager.h",
            "JobStructs.h",
            "JobSystemTests.cpp",
        ]
    }
    Group {
        name: "JobManager / BlockingBackend"
        prefix: "JobManager/BlockingBackend/"
        files: [
            "BlockingBackEnd.cpp",
            "BlockingBackEnd.h",
        ]
    }
    Group {
        name: "JobManager / ThreadBackEnd"
        prefix: "JobManager/PCBackEnd/"
        files: [
            "ThreadBackEnd.cpp",
            "ThreadBackEnd.h",
        ]
    }
    Group {
        name: "OverloadSceneManager"
        prefix: "OverloadSceneManager/"
        files: [
            "OverloadSceneManager.cpp",
            "OverloadSceneManager.h",
        ]
    }
    Group {
        name: "LZ4Decompressor"
        files: [
            "LZ4Decompressor.cpp",
            "LZ4Decompressor.h",
        ]
    }
    Group {
        name: "ProjectManager"
        prefix: "ProjectManager/"
        files: [
            "ProjectManager.cpp",
            "ProjectManager.h",
        ]
    }
    Group {
        name: "RemoteConsole"
        prefix: "RemoteConsole/"
        files: [
            "RemoteConsole.cpp",
            "RemoteConsole.h",
        ]
    }
    Group {
        name: "Serialization"
        prefix: "Serialization/"
        files: [
            "ArchiveHost.cpp",
            "Token.h",
            "XmlIArchive.cpp",
            "XmlIArchive.h",
            "XmlOArchive.cpp",
            "XmlOArchive.h",
        ]
    }
    Group {
        name: "Services"
        files: [
            "RemoteCommand.cpp",
            "RemoteCommand.h",
            "RemoteCommandClient.cpp",
            "RemoteCommandHelpers.cpp",
            "RemoteCommandHelpers.h",
            "RemoteCommandServer.cpp",
            "ServiceNetwork.cpp",
            "ServiceNetwork.h",
        ]
    }
    Group {
        name: "Stroboscope"
        prefix: "Stroboscope/"
        files: [
            "Stroboscope.cpp",
            "Stroboscope.h",
        ]
    }
    Group {
        name: "VR"
        files: [
            "HMDCVars.cpp",
            "HMDCVars.h",
            "HMDManager.cpp",
            "HMDManager.h",
        ]
    }
    Group {
        name: "ZLibDecompressor"
        files: [
            "ZLibDecompressor.cpp",
            "ZLibDecompressor.h",
        ]
    }
    Group {
        name: "Mac"
        files: [
            "SystemUtilsApple.h",
            "SystemUtilsApple.mm",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "CryDLMalloc.c",
        ]
    }
    //Group {
    //    name: "Header Files"
    //    files: [
    //        "DurangoDebugCallstack.h",
    //    ]
    //}
    //Group {
    //    name: "Source Files"
    //    files: [
    //        "DurangoDebugCallstack.cpp",
    //    ]
    //}
    //Group {
    //    name: "Profiling"
    //    prefix: "Profiling/"
    //    files: [
    //        "PlatformProfiler_durango.cpp",
    //    ]
    //}
    //Group {
    //    name: "PlatformOS"
    //    prefix: "PlatformOS/"
    //    files: [
    //        "PlatformOSUserManager_Durango.cpp",
    //        "PlatformOSUserManager_Durango.h",
    //        "PlatformOS_Durango.cpp",
    //        "PlatformOS_Durango.h",
    //        "SaveReaderWriter_Durango.cpp",
    //        "SaveReaderWriter_Durango.h",
    //        "StreamingInstall_Durango.cpp",
    //        "StreamingInstall_Durango.h",
    //    ]
    //}
    Group {
        name: "Windows / Profiling"
        prefix: "Profiling/"
        files: [
            "PixForWindows.cpp",
            "PixForWindows.h",
            "PlatformProfiler_win.cpp",
        ]
    }
    Group {
        name: "PlatformOS"
        prefix: "PlatformOS/"
        files: [
            "PlatformOS_PC.cpp",
            "PlatformOS_PC.h",
        ]
    }
    files: [
        "CrashHandler.rc",
    ]
}
