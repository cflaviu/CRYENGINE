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
        "../../../CryEngine/CryAction",
        "../../../CryEngine/CryCommon",
        "../../../CryEngine/CryCommon/3rdParty",
        "../../../CryEngine/CrySchematyc/Core/Interface",
        "../../../CryExtensions/CryLink/Interface",
        "../../../SDKs/Python/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtCore",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtGui",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtOpenGL",
        "../../../SDKs/Qt/5.12.3_python_37/msvc2017_64/Qt/include/QtWidgets",
        "../../../SDKs/XT_13_4/Include",
        "../../../SDKs/boost",
        "../../../Sandbox/EditorInterface",
        "../../../Sandbox/EditorQt",
        "../../../Sandbox/EditorQt/Include",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/EditorSchematyc",
        "../../../Sandbox/Plugins/EditorSchematyc/GeneratedFiles",
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
        name: "Plugin"
        files: [
            "EditorSchematyc.qrc",
        ]
    }
    Group {
        name: "Deprecated"
        files: [
            "ReportWidget.cpp",
            "ReportWidget.h",
        ]
    }
    Group {
        name: "Deprecated / Plugin"
        files: [
            "CryLinkCommands.cpp",
            "CryLinkCommands.h",
            "Resource.h",
            "Resource.rc",
        ]
    }
    Group {
        name: "Plugin"
        files: [
            "Plugin.cpp",
            "Plugin.h",
            "PluginUtils.cpp",
            "PluginUtils.h",
            "ResourceSelectors.cpp",
        ]
    }
    Group {
        name: "AssetTypes"
        files: [
            "EntityAssetType.cpp",
            "EntityAssetType.h",
            "LibraryAssetType.cpp",
            "LibraryAssetType.h",
        ]
    }
    Group {
        name: "Deprecated/Widgets"
        files: [
            "DetailWidget.cpp",
            "DetailWidget.h",
            "EnvBrowserWidget.cpp",
            "EnvBrowserWidget.h",
            "LogWidget.cpp",
            "LogWidget.h",
            "ScriptBrowserUtils.cpp",
            "ScriptBrowserUtils.h",
            "ScriptBrowserWidget.cpp",
            "ScriptBrowserWidget.h",
        ]
    }
    Group {
        name: "AbstractModels"
        files: [
            "AbstractObjectItem.cpp",
            "AbstractObjectItem.h",
            "AbstractObjectModel.cpp",
            "AbstractObjectModel.h",
        ]
    }
    Group {
        name: "Script"
        files: [
            "ScriptUndo.cpp",
            "ScriptUndo.h",
        ]
    }
    Group {
        name: "Editor"
        files: [
            "MainWindow.cpp",
            "MainWindow.h",
            "NodeGraphClipboard.cpp",
            "NodeGraphClipboard.h",
            "NodeGraphRuntimeContext.cpp",
            "NodeGraphRuntimeContext.h",
            "SchematycUtils.cpp",
            "SchematycUtils.h",
        ]
    }
    Group {
        name: "GraphView / Model"
        files: [
            "GraphConnectionItem.cpp",
            "GraphConnectionItem.h",
            "GraphNodeItem.cpp",
            "GraphNodeItem.h",
            "GraphPinItem.cpp",
            "GraphPinItem.h",
            "GraphViewModel.cpp",
            "GraphViewModel.h",
        ]
    }
    Group {
        name: "GraphView / Widgets"
        files: [
            "GraphViewWidget.cpp",
            "GraphViewWidget.h",
        ]
    }
    Group {
        name: "Object / Model"
        files: [
            "ComponentsDictionaryModel.cpp",
            "ComponentsDictionaryModel.h",
            "ComponentsModel.cpp",
            "ComponentsModel.h",
            "GraphItem.cpp",
            "GraphItem.h",
            "InterfacesDictionaryModel.cpp",
            "InterfacesDictionaryModel.h",
            "ObjectModel.cpp",
            "ObjectModel.h",
            "SignalItem.cpp",
            "SignalItem.h",
            "StateItem.cpp",
            "StateItem.h",
            "StateMachineItem.cpp",
            "StateMachineItem.h",
            "TypesDictionary.cpp",
            "TypesDictionary.h",
            "VariableItem.cpp",
            "VariableItem.h",
            "VariablesModel.cpp",
            "VariablesModel.h",
        ]
    }
    Group {
        name: "Object / Widgets"
        files: [
            "ComponentsWidget.cpp",
            "ComponentsWidget.h",
            "ObjectStructureWidget.cpp",
            "ObjectStructureWidget.h",
            "PreviewWidget.cpp",
            "PreviewWidget.h",
            "PropertiesWidget.cpp",
            "PropertiesWidget.h",
            "VariablesWidget.cpp",
            "VariablesWidget.h",
        ]
    }
    Group {
        name: "Widgets / Utils"
        files: [
            "NameEditorWidget.cpp",
            "NameEditorWidget.h",
        ]
    }
    Group {
        name: "Variables / Model"
        prefix: "VariableStorage/"
        files: [
            "AbstractVariableTypesModel.cpp",
            "AbstractVariableTypesModel.h",
        ]
    }
}

