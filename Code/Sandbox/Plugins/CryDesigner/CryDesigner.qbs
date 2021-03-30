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
        "../../../Sandbox/EditorQt/.",
        "../../../Sandbox/EditorQt/Include",
        "../../../Sandbox/EditorQt/Include",
        "../../../Sandbox/Libs/CryQt",
        "../../../Sandbox/Plugins/",
        "../../../Sandbox/Plugins/CryDesigner",
        "../../../Sandbox/Plugins/EditorCommon",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
        "../../../Sandbox/Plugins/MFCToolsPlugin",
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
        name: "Objects"
        prefix: "Objects/"
        files: [
            "AreaSolidObject.cpp",
            "AreaSolidObject.h",
            "ClipVolumeObject.cpp",
            "ClipVolumeObject.h",
            "DesignerBaseObject.h",
            "DesignerBaseObject_Impl.h",
            "DesignerObject.cpp",
            "DesignerObject.h",
        ]
    }
    Group {
        name: "Scripts"
        prefix: "Scripts/"
        files: [
            "BasicScripts.cpp",
            "BasicScripts.h",
            "EditScripts.cpp",
            "ModifyScripts.cpp",
            "SelectionScripts.cpp",
            "ShapeScripts.cpp",
        ]
    }
    Group {
        name: "Core"
        prefix: "Core/"
        files: [
            "BSPTree2D.cpp",
            "BSPTree2D.h",
            "BSPTree3D.cpp",
            "BSPTree3D.h",
            "Boolean3D.cpp",
            "Common.cpp",
            "Common.h",
            "Convexes.h",
            "Declaration.h",
            "EdgesSharpnessManager.cpp",
            "EdgesSharpnessManager.h",
            "FlexibleMesh.cpp",
            "FlexibleMesh.h",
            "HalfEdgeMesh.cpp",
            "HalfEdgeMesh.h",
            "Helper.cpp",
            "Helper.h",
            "Line.h",
            "LoopPolygons.cpp",
            "LoopPolygons.h",
            "Model.cpp",
            "Model.h",
            "ModelCompiler.cpp",
            "ModelCompiler.h",
            "ModelDB.cpp",
            "ModelDB.h",
            "Plane.h",
            "Polygon.cpp",
            "Polygon.h",
            "PolygonDecomposer.cpp",
            "PolygonDecomposer.h",
            "PolygonMesh.cpp",
            "PolygonMesh.h",
            "SmoothingGroup.cpp",
            "SmoothingGroup.h",
            "SmoothingGroupManager.cpp",
            "SmoothingGroupManager.h",
            "Subdivision.cpp",
            "Subdivision.h",
            "UVIsland.cpp",
            "UVIsland.h",
            "UVIslandManager.cpp",
            "UVIslandManager.h",
        ]
    }
    Group {
        name: "Tools"
        prefix: "Tools/"
        files: [
            "AreaSolidTool.cpp",
            "AreaSolidTool.h",
            "BaseTool.cpp",
            "BaseTool.h",
            "ClipVolumeTool.cpp",
            "ClipVolumeTool.h",
            "ToolCommon.cpp",
            "ToolCommon.h",
        ]
    }
    Group {
        name: "Tools / Edit"
        prefix: "Tools/Edit/"
        files: [
            "CollapseTool.cpp",
            "CollapseTool.h",
            "CopyTool.cpp",
            "CopyTool.h",
            "ExtrudeEdgeTool.cpp",
            "ExtrudeEdgeTool.h",
            "ExtrudeMultipleTool.cpp",
            "ExtrudeMultipleTool.h",
            "ExtrudeTool.cpp",
            "ExtrudeTool.h",
            "FillTool.cpp",
            "FillTool.h",
            "FlipTool.cpp",
            "FlipTool.h",
            "MergeTool.cpp",
            "MergeTool.h",
            "OffsetTool.cpp",
            "OffsetTool.h",
            "RemoveDoublesTool.cpp",
            "RemoveDoublesTool.h",
            "RemoveTool.cpp",
            "RemoveTool.h",
            "SeparateTool.cpp",
            "SeparateTool.h",
            "WeldTool.cpp",
            "WeldTool.h",
        ]
    }
    Group {
        name: "Tools / Misc"
        prefix: "Tools/Misc/"
        files: [
            "ExportTool.cpp",
            "ExportTool.h",
            "HidePolygonTool.cpp",
            "HidePolygonTool.h",
            "Pivot2BottomTool.cpp",
            "Pivot2BottomTool.h",
            "ResetXFormTool.cpp",
            "ResetXFormTool.h",
            "SnapToGridTool.cpp",
            "SnapToGridTool.h",
        ]
    }
    Group {
        name: "Tools / Modify"
        prefix: "Tools/Modify/"
        files: [
            "BevelTool.cpp",
            "BevelTool.h",
            "BooleanTool.cpp",
            "BooleanTool.h",
            "CloneTool.cpp",
            "CloneTool.h",
            "LatheTool.cpp",
            "LatheTool.h",
            "LoopCutTool.cpp",
            "LoopCutTool.h",
            "MagnetTool.cpp",
            "MagnetTool.h",
            "MirrorTool.cpp",
            "MirrorTool.h",
            "SliceTool.cpp",
            "SliceTool.h",
            "SubdivisionTool.cpp",
            "SubdivisionTool.h",
        ]
    }
    Group {
        name: "Tools / Select"
        prefix: "Tools/Select/"
        files: [
            "InvertSelectionTool.cpp",
            "InvertSelectionTool.h",
            "LoopSelectionTool.cpp",
            "LoopSelectionTool.h",
            "MovePipeline.cpp",
            "MovePipeline.h",
            "MoveTool.cpp",
            "MoveTool.h",
            "PivotTool.cpp",
            "PivotTool.h",
            "RingSelectionTool.cpp",
            "RingSelectionTool.h",
            "SelectAllNoneTool.cpp",
            "SelectAllNoneTool.h",
            "SelectConnectedTool.cpp",
            "SelectConnectedTool.h",
            "SelectGrowTool.cpp",
            "SelectGrowTool.h",
            "SelectTool.cpp",
            "SelectTool.h",
        ]
    }
    Group {
        name: "Tools / Shape"
        prefix: "Tools/Shape/"
        files: [
            "BoxTool.cpp",
            "BoxTool.h",
            "ConeTool.cpp",
            "ConeTool.h",
            "CubeEditor.cpp",
            "CubeEditor.h",
            "CurveTool.cpp",
            "CurveTool.h",
            "CylinderTool.cpp",
            "CylinderTool.h",
            "DiscTool.cpp",
            "DiscTool.h",
            "PolylineTool.cpp",
            "PolylineTool.h",
            "RectangleTool.cpp",
            "RectangleTool.h",
            "ShapeTool.cpp",
            "ShapeTool.h",
            "SphereTool.cpp",
            "SphereTool.h",
            "StairProfileTool.cpp",
            "StairProfileTool.h",
            "StairTool.cpp",
            "StairTool.h",
        ]
    }
    Group {
        name: "Tools / Surface"
        prefix: "Tools/Surface/"
        files: [
            "SmoothingGroupTool.cpp",
            "SmoothingGroupTool.h",
            "UVMappingTool.cpp",
            "UVMappingTool.h",
        ]
    }
    Group {
        name: "UVMappingEditor"
        prefix: "UVMappingEditor/"
        files: [
            "BaseTool.cpp",
            "BaseTool.h",
            "UVCluster.cpp",
            "UVCluster.h",
            "UVCursor.cpp",
            "UVCursor.h",
            "UVElement.cpp",
            "UVElement.h",
            "UVGizmo.cpp",
            "UVGizmo.h",
            "UVMappingEditor.cpp",
            "UVMappingEditor.h",
            "UVMappingEditorCommon.cpp",
            "UVMappingEditorCommon.h",
            "UVUndo.cpp",
            "UVUndo.h",
        ]
    }
    Group {
        name: "UVMappingEditor / ManipulationTools"
        prefix: "UVMappingEditor/ManipulationTools/"
        files: [
            "AlignTool.cpp",
            "AlignTool.h",
            "FlipTool.cpp",
            "FlipTool.h",
            "LoopSelectionTool.cpp",
            "LoopSelectionTool.h",
            "MoveTool.cpp",
            "MoveTool.h",
            "SelectSharedTool.cpp",
            "SelectSharedTool.h",
            "SelectTool.cpp",
            "SelectTool.h",
            "SeparateTool.cpp",
            "SeparateTool.h",
            "SewTool.cpp",
            "SewTool.h",
            "UnmapTool.cpp",
            "UnmapTool.h",
        ]
    }
    Group {
        name: "UVMappingEditor / UnwrappingTools"
        prefix: "UVMappingEditor/UnwrappingTools/"
        files: [
            "CubeUnwrappingTool.cpp",
            "CubeUnwrappingTool.h",
            "CylinderUnwrappingTool.cpp",
            "CylinderUnwrappingTool.h",
            "PlaneUnwrappingTool.cpp",
            "PlaneUnwrappingTool.h",
            "SphereUnwrappingTool.cpp",
            "SphereUnwrappingTool.h",
            "ViewUnwrappingTool.cpp",
            "ViewUnwrappingTool.h",
        ]
    }
    Group {
        name: "UIs"
        prefix: "UIs/"
        files: [
            "CubeEditorPanel.cpp",
            "CubeEditorPanel.h",
            "DesignerDockable.cpp",
            "DesignerDockable.h",
            "DesignerPanel.cpp",
            "DesignerPanel.h",
            "DesignerSubPanel.cpp",
            "DesignerSubPanel.h",
            "PropertyTreePanel.h",
            "SmoothingGroupPanel.cpp",
            "SmoothingGroupPanel.h",
            "SubdivisionPanel.cpp",
            "SubdivisionPanel.h",
            "UICommon.cpp",
            "UICommon.h",
        ]
    }
    Group {
        name: "Util"
        prefix: "Util/"
        files: [
            "ArgumentModel.cpp",
            "ArgumentModel.h",
            "Converter.cpp",
            "Converter.h",
            "DesignerSettings.cpp",
            "DesignerSettings.h",
            "Display.cpp",
            "Display.h",
            "ElementSet.cpp",
            "ElementSet.h",
            "ExcludedEdgeManager.cpp",
            "ExcludedEdgeManager.h",
            "Exporter.cpp",
            "Exporter.h",
            "ExtrusionSnappingHelper.cpp",
            "ExtrusionSnappingHelper.h",
            "HeightManipulator.cpp",
            "HeightManipulator.h",
            "OffsetManipulator.cpp",
            "OffsetManipulator.h",
            "PrimitiveShape.cpp",
            "PrimitiveShape.h",
            "SpotManager.cpp",
            "SpotManager.h",
            "UVUnwrapUtil.cpp",
            "UVUnwrapUtil.h",
            "Undo.cpp",
            "Undo.h",
        ]
    }
    files: [
            "Resource.h",
            "main.cpp",
            "CryDesigner.rc",
            "ToolFactory.h",
            "DesignerEditor.cpp",
            "DesignerEditor.h",
            "DesignerSession.cpp",
            "DesignerSession.h",
    ]
}

