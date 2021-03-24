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
        "../../SDKs/Lua/src",
        "../../SDKs/boost",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CrySchematyc/Core/Interface",
        "../CryScriptSystem",
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
        name: "Header Files"
        files: [
            "FunctionHandler.h",
            "LuaDebugger/GoToFuncWnd.h",
            "LuaDebuggerResource.h",
            "ScriptSystem.h",
            "ScriptTable.h",
            "StackGuard.h",
            "resource.h",
        ]
    }
    Group {
        name: "LuaDebugger"
        prefix: "LuaDebugger/"
        files: [
            "AboutWnd.h",
            "Coverage.cpp",
            "Coverage.h",
            "FileTree.cpp",
            "FileTree.h",
            "GoToWnd.h",
            "LUADBG.cpp",
            "LUADBG.h",
            "_TinyBrowseFolder.h",
            "_TinyCaptionWindow.h",
            "_TinyCoolEdit.h",
            "_TinyFileEnum.h",
            "_TinyImageList.h",
            "_TinyMain.h",
            "_TinyRegistry.h",
            "_TinySplitter.h",
            "_TinyStatusBar.h",
            "_TinyTreeList.h",
            "_TinyWindow.h",
        ]
    }
    Group {
        name: "LuaRemoteDebug"
        prefix: "LuaRemoteDebug/"
        files: [
            "LuaRemoteDebug.cpp",
            "LuaRemoteDebug.h",
            "SerializationHelper.h",
        ]
    }
    Group {
        name: "Resource Files"
        files: [
            "LuaDebugger.rc",
            "LuaDebugger/LUADBG.ico",
            "LuaDebugger/res/TreeView.bmp",
            "LuaDebugger/res/toolbar1.bmp",
            "LuaDebugger/small.ico",
        ]
    }
    Group {
        name: "ScriptBindings"
        prefix: "ScriptBindings/"
        files: [
            "ScriptBind_Movie.cpp",
            "ScriptBind_Movie.h",
            "ScriptBind_Particle.cpp",
            "ScriptBind_Particle.h",
            "ScriptBind_Physics.cpp",
            "ScriptBind_Physics.h",
            "ScriptBind_Script.cpp",
            "ScriptBind_Script.h",
            "ScriptBind_Sound.cpp",
            "ScriptBind_Sound.h",
            "ScriptBind_System.cpp",
            "ScriptBind_System.h",
            "ScriptBinding.cpp",
            "ScriptBinding.h",
            "SurfaceTypes.cpp",
            "SurfaceTypes.h",
        ]
    }
    Group {
        name: "Source Files"
        files: [
            "BucketAllocator.h",
            "CryScriptSystem.cpp",
            "FunctionHandler.cpp",
            "ScriptSystem.cpp",
            "ScriptTable.cpp",
            "ScriptTimerMgr.cpp",
            "ScriptTimerMgr.h",
            "vectorlib.c",
        ]
    }
}
