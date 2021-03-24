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
        "../../SDKs/freetype/include",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryFont",
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
    //     Group {
    //         name: "Durango"
    //         files: [
    //             "DurangoInput.cpp",
    //             "DurangoInput.h",
    //             "DurangoInputDevice.cpp",
    //             "DurangoInputDevice.h",
    //             "DurangoInputKeyboard.cpp",
    //             "DurangoInputKeyboard.h",
    //         ]
    //     }
    //     Group {
    //         name: "Durango / Kinect"
    //         files: [
    //             "KinectAudioWinRT.cpp",
    //             "KinectAudioWinRT.h",
    //             "KinectInputWinRT.cpp",
    //             "KinectInputWinRT.h",
    //         ]
    //     }
    Group {
        name: "EyeTracker"
        files: [
            "EyeTrackerInput.cpp",
            "EyeTrackerInput.h",
        ]
    }
    Group {
        name: "Kinect"
        files: [
            "KinectInputNULL.h",
        ]
    }
    //     Group {
    //         name: "Kinect / Filters"
    //         prefix: "Filters/"
    //         files: [
    //             "JointFilter.cpp",
    //             "JointFilter.h",
    //         ]
    //     }
    //     Group {
    //         name: "Orbis"
    //         files: [
    //             "OrbisInputDevice.cpp",
    //             "OrbisInputDevice.h",
    //             "OrbisPad.cpp",
    //             "OrbisPad.h",
    //             "OrbisPadWin.cpp",
    //             "OrbisPadWin.h",
    //         ]
    //     }
    Group {
        name: "Linux only"
        files: [
            "LinuxInput.cpp",
            "LinuxInput.h",
        ]
    }
    Group {
        name: "Linux only / SDL"
        files: [
            "SDLKeyboard.cpp",
            "SDLKeyboard.h",
            "SDLMouse.cpp",
            "SDLMouse.h",
            "SDLPad.cpp",
            "SDLPad.h",
        ]
    }
    //     Group {
    //         name: "Orbis"
    //         files: [
    //             "OrbisInput.cpp",
    //             "OrbisInput.h",
    //             "OrbisKeyboard.cpp",
    //             "OrbisKeyboard.h",
    //         ]
    //     }
    Group {
        name: "Shared"
        files: [
            "BaseInput.cpp",
            "BaseInput.h",
            "InputDevice.cpp",
            "InputDevice.h",
        ]
    }
    //     Group {
    //         name: "Synergy"
    //         prefix: "Synergy/"
    //         files: [
    //             "SynergyContext.cpp",
    //             "SynergyContext.h",
    //             "SynergyKeyboard.cpp",
    //             "SynergyKeyboard.h",
    //             "SynergyMouse.cpp",
    //             "SynergyMouse.h",
    //         ]
    //     }
    Group {
        name: "TrackIR"
        files: [
            "NaturalPointInputNULL.h",
        ]
    }
    Group {
        name: "Windows only / DX"
        files: [
            "DXInput.cpp",
            "DXInput.h",
            "DXInputDevice.cpp",
            "DXInputDevice.h",
            "Keyboard.cpp",
            "Keyboard.h",
            "Mouse.cpp",
            "Mouse.h",
            "XInputDevice.cpp",
            "XInputDevice.h",
        ]
    }
    files: [
        "CryInput.cpp",
        "CryInput.h",
        "InputCVars.cpp",
        "InputCVars.h",
        "resource.h",
    ]
}
