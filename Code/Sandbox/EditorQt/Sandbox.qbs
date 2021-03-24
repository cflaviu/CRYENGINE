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
        "../CryAction",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryDefaultEntities/Module",
        "../CryDefaultEntities/Module/.",
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
        name: "AI"
        prefix: "AI/"
        files: [
            "AIManager.cpp",
            "AIManager.h",
            "AIMoveSimulation.cpp",
            "AIMoveSimulation.h",
            "AiBehavior.cpp",
            "AiBehavior.h",
            "AiBehaviorLibrary.cpp",
            "AiBehaviorLibrary.h",
            "CoverSurfaceManager.cpp",
            "CoverSurfaceManager.h",
            "EditorCommands_AI.cpp",
        ]
    }
    Group {
        name: "Controls"
        prefix: "QT/Widgets/"
        files: [
            "QEditToolButton.cpp",
            "QEditToolButton.h",
            "QPreviewWidget.cpp",
            "QPreviewWidget.h",
        ]
    }
    Group {
        name: "AssetSystem"
        prefix: "AssetSystem/"
        files: [
            "AnimationType.cpp",
            "AnimationType.h",
            "CharacterDefinitionType.cpp",
            "CharacterDefinitionType.h",
            "GeometryCacheAssetType.cpp",
            "GeometryCacheAssetType.h",
            "LegacyAssetTypes.cpp",
            "LegacyAssetTypes.h",
            "MaterialType.cpp",
            "MaterialType.h",
            "MeshType.cpp",
            "MeshType.h",
            "SkeletonType.cpp",
            "SkeletonType.h",
            "SkinnedMeshType.cpp",
            "SkinnedMeshType.h",
            "SoundAssetType.cpp",
            "SoundAssetType.h",
            "TextureAssetType.cpp",
            "TextureAssetType.h",
        ]
    }
    Group {
        name: "Core"
        files: [
            "ClassFactory.cpp",
            "ClassFactory.h",
            "Commands/EditorCommands_General.cpp",
            "CryEdit.cpp",
            "CryEdit.h",
            "CryEdit.rc",
            "EditorDefs.h",
            "GameEngine.cpp",
            "GameEngine.h",
            "IEditorImpl.cpp",
            "IEditorImpl.h",
            "IconManager.cpp",
            "IconManager.h",
            "Include/SandboxAPI.h",
            "MainThreadWorker.cpp",
            "MainThreadWorker.h",
            "PluginManager.cpp",
            "PluginManager.h",
            "QT/PythonUIActionBinds.cpp",
            "QT/QtMain.cpp",
            "Resource.h",
            "SessionData.cpp",
            "SessionData.h",
            "Version.h",
        ]
    }
    Group {
        name: "Util"
        files: [
            "LogFile.cpp",
            "LogFile.h",
        ]
    }
    Group {
        name: "DataBase"
        files: [
            "BaseLibrary.cpp",
            "BaseLibrary.h",
            "BaseLibraryDialog.cpp",
            "BaseLibraryDialog.h",
            "BaseLibraryItem.cpp",
            "BaseLibraryItem.h",
            "BaseLibraryManager.cpp",
            "BaseLibraryManager.h",
            "DataBaseDialog.cpp",
            "DataBaseDialog.h",
        ]
    }
    Group {
        name: "DataBase / GameTokens"
        prefix: "GameTokens/"
        files: [
            "GameTokenDialog.cpp",
            "GameTokenDialog.h",
            "GameTokenItem.cpp",
            "GameTokenItem.h",
            "GameTokenLibrary.cpp",
            "GameTokenLibrary.h",
            "GameTokenManager.cpp",
            "GameTokenManager.h",
        ]
    }
    Group {
        name: "LevelEditor / EditTools"
        files: [
            "EditToolPanel.cpp",
            "EditToolPanel.h",
        ]
    }
    Group {
        name: "LevelEditor / EditTools / AlignTool"
        files: [
            "AlignTool.cpp",
            "AlignTool.h",
        ]
    }
    Group {
        name: "LevelEditor / EditTools / Clone"
        files: [
            "ObjectCloneTool.cpp",
            "ObjectCloneTool.h",
        ]
    }
    Group {
        name: "LevelEditor / EditTools / Create"
        files: [
            "BaseObjectCreateTool.cpp",
            "BaseObjectCreateTool.h",
            "ObjectCreateTool.cpp",
            "ObjectCreateTool.h",
        ]
    }
    Group {
        name: "LevelEditor / EditTools / EditMode"
        files: [
            "EditMode/VertexSnappingModeTool.cpp",
            "EditMode/VertexSnappingModeTool.h",
            "Util/KDTree.cpp",
            "Util/KDTree.h",
        ]
    }
    Group {
        name: "LevelEditor / EditTools / LinkTool"
        files: [
            "EditorCommands_Tools.cpp",
            "LinkTool.cpp",
            "LinkTool.h",
        ]
    }
    Group {
        name: "LevelEditor / EditTools / PhysTool"
        files: [
            "Commands/EditorCommands_Physics.cpp",
            "PhysTool.cpp",
            "PhysTool.h",
        ]
    }
    Group {
        name: "Export"
        files: [
            "AnimationSerializer.cpp",
            "AnimationSerializer.h",
            "Export/ExportManager.cpp",
            "Export/ExportManager.h",
            "Export/OBJExporter.cpp",
            "Export/OBJExporter.h",
            "Export/OCMExporter.cpp",
            "Export/OCMExporter.h",
            "Export/ScreenshotExporter.cpp",
            "FBXExporterDialog.cpp",
            "FBXExporterDialog.h",
            "GameExporter.cpp",
            "GameExporter.h",
            "GameResourcesExporter.cpp",
            "GameResourcesExporter.h",
            "ParticleExporter.cpp",
            "ParticleExporter.h",
        ]
    }
    Group {
        name: "Util / Geometry"
        files: [
            "Geometry/EdGeometry.cpp",
            "Geometry/EdGeometry.h",
            "Geometry/EdMesh.cpp",
            "Geometry/EdMesh.h",
            "Geometry/TriMesh.cpp",
            "Geometry/TriMesh.h",
            "Util/bitarray.h",
        ]
    }
    Group {
        name: "HyperGraph"
        prefix: "HyperGraph/"
        files: [
            "FlowGraphPreferences.cpp",
            "FlowGraphPreferences.h",
            "HyperGraph.cpp",
            "HyperGraph.h",
            "HyperGraphManager.cpp",
            "HyperGraphManager.h",
            "HyperGraphNode.cpp",
            "HyperGraphNode.h",
            "IHyperGraph.h",
        ]
    }
    Group {
        name: "HyperGraph / Panels and Dialogs"
        prefix: "HyperGraph/Controls/"
        files: [
            "BreakPointsCtrl.cpp",
            "BreakPointsCtrl.h",
            "DragNDropListBox.cpp",
            "DragNDropListBox.h",
            "FlowGraphDebuggerEditor.cpp",
            "FlowGraphDebuggerEditor.h",
            "FlowGraphModuleDialogs.cpp",
            "FlowGraphModuleDialogs.h",
            "FlowGraphProperties.cpp",
            "FlowGraphProperties.h",
            "FlowGraphSearchCtrl.cpp",
            "FlowGraphSearchCtrl.h",
            "FlowGraphTokensDialogs.cpp",
            "FlowGraphTokensDialogs.h",
            "HyperGraphEditorNodeList.cpp",
            "HyperGraphEditorNodeList.h",
            "HyperGraphEditorTree.cpp",
            "HyperGraphEditorTree.h",
            "HyperGraphEditorWnd.cpp",
            "HyperGraphEditorWnd.h",
            "HyperGraphView.cpp",
            "HyperGraphView.h",
            "SelectGameTokenDialog.cpp",
            "SelectGameTokenDialog.h",
        ]
    }
    Group {
        name: "HyperGraph / Node Painter"
        prefix: "HyperGraph/NodePainter/"
        files: [
            "DisplayList.h",
            "HyperNodePainter_BlackBox.cpp",
            "HyperNodePainter_BlackBox.h",
            "HyperNodePainter_Comment.cpp",
            "HyperNodePainter_Comment.h",
            "HyperNodePainter_CommentBox.cpp",
            "HyperNodePainter_CommentBox.h",
            "HyperNodePainter_Default.cpp",
            "HyperNodePainter_Default.h",
            "HyperNodePainter_QuickSearch.cpp",
            "HyperNodePainter_QuickSearch.h",
            "IHyperNodePainter.h",
        ]
    }
    Group {
        name: "HyperGraph / Nodes"
        prefix: "HyperGraph/Nodes/"
        files: [
            "BlackBoxNode.cpp",
            "BlackBoxNode.h",
            "CommentBoxNode.cpp",
            "CommentBoxNode.h",
            "CommentNode.cpp",
            "CommentNode.h",
            "MissingNode.cpp",
            "MissingNode.h",
            "QuickSearchNode.cpp",
            "QuickSearchNode.h",
            "TrackEventNode.cpp",
            "TrackEventNode.h",
        ]
    }
    Group {
        name: "HyperGraph / CustomActions"
        prefix: "CustomActions/"
        files: [
            "CustomActionDialog.cpp",
            "CustomActionDialog.h",
            "CustomActionsEditorManager.cpp",
            "CustomActionsEditorManager.h",
        ]
    }
    Group {
        name: "HyperGraph / HyperFlowGraph"
        prefix: "HyperGraph/"
        files: [
            "FlowFilters.cpp",
            "FlowFilters.h",
            "FlowGraph.cpp",
            "FlowGraph.h",
            "FlowGraphHelpers.cpp",
            "FlowGraphHelpers.h",
            "FlowGraphManager.cpp",
            "FlowGraphManager.h",
            "FlowGraphMigrationHelper.cpp",
            "FlowGraphMigrationHelper.h",
            "FlowGraphModuleManager.cpp",
            "FlowGraphModuleManager.h",
            "FlowGraphNode.cpp",
            "FlowGraphNode.h",
            "FlowGraphVariables.cpp",
            "FlowGraphVariables.h",
        ]
    }
    Group {
        name: "UIEditor"
        prefix: "UI/"
        files: [
            "UIManager.cpp",
            "UIManager.h",
        ]
    }
    Group {
        name: "Terrain / IndirectLighting"
        files: [
            "IndirectLighting/Raster.cpp",
            "IndirectLighting/Raster.h",
            "IndirectLighting/RasterMPMan.cpp",
            "IndirectLighting/RasterMPMan.h",
            "IndirectLighting/SHHeightmapAccessibility.cpp",
            "IndirectLighting/SHHeightmapAccessibility.h",
            "IndirectLighting/TerrainGIGen.cpp",
            "IndirectLighting/TerrainGIGen.h",
            "IndirectLighting/TerrainObjectMan.cpp",
            "IndirectLighting/TerrainObjectMan.h",
            "LightmapCompiler/SimpleTriangleRasterizer.cpp",
            "LightmapCompiler/SimpleTriangleRasterizer.h",
            "SHAllocator.cpp",
        ]
    }
    Group {
        name: "Terrain / IndirectLighting / Quadtree"
        prefix: "IndirectLighting/Quadtree/"
        files: [
            "Quadtree.h",
            "Quadtree.inl",
            "QuadtreeHelper.h",
            "QuadtreeNodeLeaf.inl",
            "QuadtreeUtilities.inl",
        ]
    }
    Group {
        name: "Include"
        prefix: "Include/"
        files: [
            "IAnimationCompressionManager.h",
            "IBackgroundScheduleManager.h",
            "IDevManager.h",
            "IRenderListener.h",
        ]
    }
    Group {
        name: "LensFlareEditor"
        files: [
            "DatabaseFrameWnd.cpp",
            "DatabaseFrameWnd.h",
            "LensFlareEditor/ILensFlareListener.h",
            "LensFlareEditor/LensFlareAtomicList.cpp",
            "LensFlareEditor/LensFlareAtomicList.h",
            "LensFlareEditor/LensFlareEditor.cpp",
            "LensFlareEditor/LensFlareEditor.h",
            "LensFlareEditor/LensFlareElement.cpp",
            "LensFlareEditor/LensFlareElement.h",
            "LensFlareEditor/LensFlareElementTree.cpp",
            "LensFlareEditor/LensFlareElementTree.h",
            "LensFlareEditor/LensFlareItem.cpp",
            "LensFlareEditor/LensFlareItem.h",
            "LensFlareEditor/LensFlareItemTree.cpp",
            "LensFlareEditor/LensFlareItemTree.h",
            "LensFlareEditor/LensFlareLibrary.cpp",
            "LensFlareEditor/LensFlareLibrary.h",
            "LensFlareEditor/LensFlareLightEntityTree.cpp",
            "LensFlareEditor/LensFlareLightEntityTree.h",
            "LensFlareEditor/LensFlareManager.cpp",
            "LensFlareEditor/LensFlareManager.h",
            "LensFlareEditor/LensFlareReferenceTree.cpp",
            "LensFlareEditor/LensFlareReferenceTree.h",
            "LensFlareEditor/LensFlareUndo.cpp",
            "LensFlareEditor/LensFlareUndo.h",
            "LensFlareEditor/LensFlareUtil.cpp",
            "LensFlareEditor/LensFlareUtil.h",
            "LensFlareEditor/LensFlareView.cpp",
            "LensFlareEditor/LensFlareView.h",
        ]
    }
    Group {
        name: "LevelEditor"
        files: [
            "CryEditDoc.cpp",
            "CryEditDoc.h",
            "LevelEditor/EditorCommands_Level.cpp",
            "LevelEditor/LevelAssetType.cpp",
            "LevelEditor/LevelAssetType.h",
            "LevelEditor/LevelEditor.cpp",
            "LevelEditor/LevelEditor.h",
            "LevelEditor/LevelEditorViewport.cpp",
            "LevelEditor/LevelEditorViewport.h",
            "LevelEditor/LevelExplorer.cpp",
            "LevelEditor/LevelExplorer.h",
            "LevelEditor/LevelExplorerCommandHelper.cpp",
            "LevelEditor/LevelExplorerCommandHelper.h",
            "LevelEditor/LevelExplorerCommands.cpp",
            "LevelEditor/LevelLayerModel.cpp",
            "LevelEditor/LevelLayerModel.h",
            "LevelEditor/LevelModel.cpp",
            "LevelEditor/LevelModel.h",
            "LevelEditor/LevelModelsManager.cpp",
            "LevelEditor/LevelModelsManager.h",
            "LevelEditor/ObjectToPrefabAssetConverter.cpp",
            "LevelEditor/ObjectToPrefabAssetConverter.h",
            "LevelEditor/TagLocations.cpp",
            "LevelEditor/TagLocations.h",
        ]
    }
    Group {
        name: "LevelEditor / Dialogs"
        prefix: "LevelEditor/"
        files: [
            "EnvironmentPresetsWidget.cpp",
            "EnvironmentPresetsWidget.h",
            "LayerPicker.cpp",
            "LayerPicker.h",
            "LevelFileUtils.cpp",
            "LevelFileUtils.h",
            "LevelFilterModel.cpp",
            "LevelFilterModel.h",
            "LevelSettings.cpp",
            "LevelSettings.h",
            "NewLevelDialog.cpp",
            "NewLevelDialog.h",
        ]
    }
    Group {
        name: "LevelEditor / Deprecated"
        files: [
            "Dialogs/DuplicatedObjectsHandlerDlg.cpp",
            "Dialogs/DuplicatedObjectsHandlerDlg.h",
            "Panels/ObjectBrowser.cpp",
            "Panels/ObjectBrowser.h",
            "Panels/ObjectCreateToolPanel.cpp",
            "Panels/ObjectCreateToolPanel.h",
            "Panels/ObjectCreateTreeWidget.cpp",
            "Panels/ObjectCreateTreeWidget.h",
        ]
    }
    Group {
        name: "LevelEditor / Objects / AI"
        prefix: "Objects/"
        files: [
            "AIAnchor.cpp",
            "AIAnchor.h",
            "AICoverSurface.cpp",
            "AICoverSurface.h",
            "AIReinforcementSpot.cpp",
            "AIReinforcementSpot.h",
            "AIWave.cpp",
            "AIWave.h",
        ]
    }
    Group {
        name: "LevelEditor / Objects / Basic"
        files: [
            "Objects/EditorCommands_BaseObject.cpp",
            "Objects/EditorCommands_Entity.cpp",
            "Objects/EditorCommands_Group.cpp",
            "Objects/EditorCommands_Layer.cpp",
            "Objects/EditorCommands_Selection.cpp",
            "Objects/Group.cpp",
            "Objects/Group.h",
            "Objects/GuidCollisionResolver.cpp",
            "Objects/ObjectLayer.cpp",
            "Objects/ObjectLayer.h",
            "Objects/ObjectLayerManager.cpp",
            "Objects/ObjectLayerManager.h",
            "Objects/ObjectManager.cpp",
            "Objects/ObjectManager.h",
            "Objects/PrefabObject.cpp",
            "Objects/PrefabObject.h",
            "Objects/PrefabPicker.cpp",
            "Objects/PrefabPicker.h",
            "Objects/SafeObjectsArray.cpp",
            "Objects/SafeObjectsArray.h",
            "Objects/SelectionGroup.cpp",
            "Objects/SelectionGroup.h",
            "Objects/SubObjSelection.cpp",
            "Objects/SubObjSelection.h",
            "SurfaceInfoPicker.cpp",
            "Objects/EditorCommands_PrefabObject.cpp",
            "SurfaceInfoPicker.h",
        ]
    }
    Group {
        name: "LevelEditor / Objects / Graphics"
        prefix: "Objects/"
        files: [
            "BrushObject.cpp",
            "BrushObject.h",
            "CloudObject.cpp",
            "CloudObject.h",
            "CollisionFilteringProperties.cpp",
            "CollisionFilteringProperties.h",
            "DecalObject.cpp",
            "DecalObject.h",
            "DistanceCloudObject.cpp",
            "DistanceCloudObject.h",
            "EnvironmentProbeObject.cpp",
            "EnvironmentProbeObject.h",
            "GeomEntity.cpp",
            "GeomEntity.h",
            "ParticleEffectObject.cpp",
            "ParticleEffectObject.h",
            "RiverObject.cpp",
            "RiverObject.h",
            "RoadObject.cpp",
            "RoadObject.h",
            "RopeObject.cpp",
            "RopeObject.h",
            "WaterShapeObject.cpp",
            "WaterShapeObject.h",
            "WaterWaveObject.cpp",
            "WaterWaveObject.h",
        ]
    }
    Group {
        name: "LevelEditor / Objects / Physics"
        prefix: "Objects/"
        files: [
            "GravityVolumeObject.cpp",
            "GravityVolumeObject.h",
            "ObjectPhysicsManager.cpp",
            "ObjectPhysicsManager.h",
        ]
    }
    Group {
        name: "LevelEditor / Objects / Shapes"
        prefix: "Objects/"
        files: [
            "AreaBox.cpp",
            "AreaBox.h",
            "AreaSphere.cpp",
            "AreaSphere.h",
            "ShapeObject.cpp",
            "ShapeObject.h",
            "VisAreaShapeObject.cpp",
            "VisAreaShapeObject.h",
        ]
    }
    Group {
        name: "LevelEditor / Objects / Entities"
        files: [
            "LuaCommentParser.cpp",
            "LuaCommentParser.h",
            "Objects/EntityObject.cpp",
            "Objects/EntityObject.h",
            "Objects/EntityObjectUndo.h",
            "Objects/EntityObjectWithAnimatedMeshComponent.cpp",
            "Objects/EntityObjectWithAnimatedMeshComponent.h",
            "Objects/EntityObjectWithComponent.cpp",
            "Objects/EntityObjectWithComponent.h",
            "Objects/EntityObjectWithStaticMeshComponent.cpp",
            "Objects/EntityObjectWithStaticMeshComponent.h",
            "Objects/EntityScript.cpp",
            "Objects/EntityScript.h",
            "Objects/MiscEntities.cpp",
            "Objects/MiscEntities.h",
            "Objects/ProtEntityObject.cpp",
            "Objects/ProtEntityObject.h",
            "Objects/ProximityTriggerObject.cpp",
            "Objects/ProximityTriggerObject.h",
            "Objects/SimpleEntity.cpp",
            "Objects/SimpleEntity.h",
            "Objects/UndoEntityParam.cpp",
            "Objects/UndoEntityParam.h",
            "Objects/UndoEntityProperty.cpp",
            "Objects/UndoEntityProperty.h",
            "Script/ScriptEnvironment.cpp",
            "Script/ScriptEnvironment.h",
        ]
    }
    Group {
        name: "LevelEditor / Objects / Misc"
        prefix: "Objects/"
        files: [
            "CameraObject.cpp",
            "CameraObject.h",
            "CharAttachHelper.cpp",
            "CharAttachHelper.h",
            "RefPicture.cpp",
            "RefPicture.h",
            "SplineDistributor.cpp",
            "SplineDistributor.h",
            "SplineObject.cpp",
            "SplineObject.h",
            "TagComment.cpp",
            "TagComment.h",
            "TagPoint.cpp",
            "TagPoint.h",
        ]
    }
    Group {
        name: "Mannequin"
        prefix: "Mannequin/"
        files: [
            "FragmentEditor.cpp",
            "FragmentEditor.h",
            "FragmentSplitter.cpp",
            "FragmentSplitter.h",
            "FragmentTrack.cpp",
            "FragmentTrack.h",
            "MannAdvancedPasteDialog.cpp",
            "MannAdvancedPasteDialog.h",
            "MannAnimDBEditorDialog.cpp",
            "MannAnimDBEditorDialog.h",
            "MannContextEditorDialog.cpp",
            "MannContextEditorDialog.h",
            "MannDebugOptionsDialog.cpp",
            "MannDebugOptionsDialog.h",
            "MannErrorReportDialog.cpp",
            "MannErrorReportDialog.h",
            "MannFileManager.cpp",
            "MannFileManager.h",
            "MannKeyPropertiesDlgFE.cpp",
            "MannKeyPropertiesDlgFE.h",
            "MannNewContextDialog.cpp",
            "MannNewContextDialog.h",
            "MannNewSubADBFilterDialog.cpp",
            "MannNewSubADBFilterDialog.h",
            "MannPreferences.cpp",
            "MannPreferences.h",
            "MannTagDefEditorDialog.cpp",
            "MannTagDefEditorDialog.h",
            "MannTagEditorDialog.cpp",
            "MannTagEditorDialog.h",
            "MannTransitionPicker.cpp",
            "MannTransitionPicker.h",
            "MannTransitionSettings.cpp",
            "MannTransitionSettings.h",
            "MannequinBase.cpp",
            "MannequinBase.h",
            "MannequinChangeMonitor.cpp",
            "MannequinChangeMonitor.h",
            "MannequinDialog.cpp",
            "MannequinDialog.h",
            "MannequinModelViewport.cpp",
            "MannequinModelViewport.h",
            "MannequinNodes.cpp",
            "MannequinNodes.h",
            "MannequinPlayback.cpp",
            "MannequinPlayback.h",
            "MannequinUtil.h",
        ]
    }
    Group {
        name: "Mannequin / Controls"
        files: [
            "Controls/ClampedSplitterWnd.cpp",
            "Controls/ClampedSplitterWnd.h",
            "Controls/FolderTreeCtrl.cpp",
            "Controls/FolderTreeCtrl.h",
            "Controls/ImageButton.cpp",
            "Controls/ImageButton.h",
            "Mannequin/Controls/FragmentBrowser.cpp",
            "Mannequin/Controls/FragmentBrowser.h",
            "Mannequin/Controls/FragmentEditorPage.cpp",
            "Mannequin/Controls/FragmentEditorPage.h",
            "Mannequin/Controls/MannDopeSheet.cpp",
            "Mannequin/Controls/MannDopeSheet.h",
            "Mannequin/Controls/MannImportBackgroundDialog.cpp",
            "Mannequin/Controls/MannImportBackgroundDialog.h",
            "Mannequin/Controls/MannequinEditorPage.cpp",
            "Mannequin/Controls/MannequinEditorPage.h",
            "Mannequin/Controls/PreviewerPage.cpp",
            "Mannequin/Controls/PreviewerPage.h",
            "Mannequin/Controls/SequenceBrowser.cpp",
            "Mannequin/Controls/SequenceBrowser.h",
            "Mannequin/Controls/TagSelectionControl.cpp",
            "Mannequin/Controls/TagSelectionControl.h",
            "Mannequin/Controls/TransitionBrowser.cpp",
            "Mannequin/Controls/TransitionBrowser.h",
            "Mannequin/Controls/TransitionEditorPage.cpp",
            "Mannequin/Controls/TransitionEditorPage.h",
        ]
    }
    Group {
        name: "Mannequin / Helper"
        files: [
            "Mannequin/Helper/MannequinFileChangeWriter.cpp",
            "Mannequin/Helper/MannequinFileChangeWriter.h",
            "Util/ArcBall.cpp",
            "Util/ArcBall.h",
            "Util/Mailer.cpp",
            "Util/Mailer.h",
        ]
    }
    Group {
        name: "Mannequin / Sequencer"
        prefix: "Mannequin/"
        files: [
            "FragmentEditorNodes.cpp",
            "FragmentEditorNodes.h",
            "ISequencerSystem.h",
            "SequenceAnalyzerNodes.cpp",
            "SequenceAnalyzerNodes.h",
            "SequencerDopeSheet.cpp",
            "SequencerDopeSheet.h",
            "SequencerDopeSheetBase.cpp",
            "SequencerDopeSheetBase.h",
            "SequencerDopeSheetToolbar.cpp",
            "SequencerDopeSheetToolbar.h",
            "SequencerKeyPropertiesDlg.cpp",
            "SequencerKeyPropertiesDlg.h",
            "SequencerNode.cpp",
            "SequencerNode.h",
            "SequencerSequence.cpp",
            "SequencerSequence.h",
            "SequencerSplitter.cpp",
            "SequencerSplitter.h",
            "SequencerTrack.h",
            "SequencerUndo.cpp",
            "SequencerUndo.h",
            "SequencerUtils.cpp",
            "SequencerUtils.h",
        ]
    }
    Group {
        name: "Material"
        files: [
            "MatEditPreviewDlg.cpp",
            "MatEditPreviewDlg.h",
            "Material/Material.cpp",
            "Material/Material.h",
            "Material/MaterialBrowser.cpp",
            "Material/MaterialBrowser.h",
            "Material/MaterialDialog.cpp",
            "Material/MaterialDialog.h",
            "Material/MaterialFXGraphMan.cpp",
            "Material/MaterialFXGraphMan.h",
            "Material/MaterialHelpers.cpp",
            "Material/MaterialHelpers.h",
            "Material/MaterialImageListCtrl.cpp",
            "Material/MaterialImageListCtrl.h",
            "Material/MaterialLibrary.cpp",
            "Material/MaterialLibrary.h",
            "Material/MaterialManager.cpp",
            "Material/MaterialManager.h",
            "Material/MaterialPickTool.cpp",
            "Material/MaterialPickTool.h",
            "Material/MaterialPythonFuncs.cpp",
            "MaterialSender.h",
            "SurfaceTypeValidator.cpp",
            "SurfaceTypeValidator.h",
        ]
    }
    Group {
        name: "Core / BackgroundTasks"
        files: [
            "BackgroundScheduleManager.cpp",
            "BackgroundScheduleManager.h",
            "BackgroundTaskManager.cpp",
            "BackgroundTaskManager.h",
        ]
    }
    Group {
        name: "Core / Commands"
        prefix: "Commands/"
        files: [
            "CommandListDockable.cpp",
            "CommandListDockable.h",
            "CommandManager.cpp",
            "CommandManager.h",
            "KeybindEditor.cpp",
            "KeybindEditor.h",
            "PolledKeyManager.cpp",
            "PolledKeyManager.h",
            "PythonManager.cpp",
            "PythonManager.h",
            "QPythonAction.cpp",
            "QPythonAction.h",
        ]
    }
    Group {
        name: "Core / FileMonitor"
        files: [
            "EditorFileMonitor.cpp",
            "EditorFileMonitor.h",
        ]
    }
    Group {
        name: "Deprecated / Mission"
        files: [
            "Mission.cpp",
            "Mission.h",
            "MissionProps.cpp",
            "MissionProps.h",
            "MissionScript.cpp",
            "MissionScript.h",
            "MissionSelectDialog.cpp",
            "MissionSelectDialog.h",
        ]
    }
    Group {
        name: "AI / NavDataGeneration"
        prefix: "AI/NavDataGeneration/"
        files: [
            "AICollision.h",
            "AILog.cpp",
            "AILog.h",
            "CAISystem.h",
            "Navigation.cpp",
            "Navigation.h",
        ]
    }
    Group {
        name: "res"
        files: [
            "DPIAware.xml",
            "res/AVI_Recorder.bmp",
            "res/ConsoleToolbar.bmp",
            "res/CryEdit.ico",
            "res/CryEdit.rc2",
            "res/CryEditDoc.ico",
            "res/CryEngineLogo.bmp",
            "res/Cursor_2.cur",
            "res/DialogEditorToolbar.bmp",
            "res/EulaDialog.rtf",
            "res/MannFileManagerImageList.bmp",
            "res/Mouse.cur",
            "res/Preferences.bmp",
            "res/Toolbar.bmp",
            "res/TreeView.bmp",
            "res/ab_toolbar.bmp",
            "res/about_dark.bmp",
            "res/about_light.bmp",
            "res/anim.bmp",
            "res/animatio.bmp",
            "res/animations_tree_soundevent.bmp",
            "res/animflag_inside_pak.bmp",
            "res/animflag_on_disk.bmp",
            "res/animtree.bmp",
            "res/arhitype_tree.bmp",
            "res/arr_addkey.cur",
            "res/arrow.cur",
            "res/arrow_down.cur",
            "res/arrow_down_black.ico",
            "res/arrow_downright.cur",
            "res/arrow_up.cur",
            "res/arrow_up_black.ico",
            "res/arrow_upright.cur",
            "res/arrowcop.cur",
            "res/assetIsDraggable.ico",
            "res/avi_reco.bmp",
            "res/ball_disabled.ico",
            "res/ball_offline.ico",
            "res/ball_online.ico",
            "res/ball_pending.ico",
            "res/bitmap5.bmp",
            "res/bitmap6.bmp",
            "res/bmp00001.bmp",
            "res/bmp00002.bmp",
            "res/bmp00003.bmp",
            "res/bmp00005.bmp",
            "res/bmp00006.bmp",
            "res/bmp00007.bmp",
            "res/bmp00008.bmp",
            "res/bmp00009.bmp",
            "res/bmp00010.bmp",
            "res/bmp00011.bmp",
            "res/bmp00012.bmp",
            "res/bmp00013.bmp",
            "res/bmp00014.bmp",
            "res/bmp00015.bmp",
            "res/bmp00016.bmp",
            "res/bmp00017.bmp",
            "res/bmp00019.bmp",
            "res/bmp00020.bmp",
            "res/bmp00024.bmp",
            "res/bmp00025.bmp",
            "res/bmp00026.bmp",
            "res/bmp00027.bmp",
            "res/bmp00028.bmp",
            "res/bmp00029.bmp",
            "res/bmp00030.bmp",
            "res/bmp00031.bmp",
            "res/brush24bpp.bmp",
            "res/ce_animations_toolbar.bmp",
            "res/character_parts_bar.bmp",
            "res/charedit.bmp",
            "res/clapperboard_cancel.bmp",
            "res/clapperboard_ready.bmp",
            "res/clone.ico",
            "res/cur00001.cur",
            "res/cur00002.cur",
            "res/cur00003.cur",
            "res/cur00004.cur",
            "res/cur00005.cur",
            "res/cursor1.cur",
            "res/cursor2.cur",
            "res/db_gametoken.bmp",
            "res/db_library_bar.bmp",
            "res/db_library_item_bar.bmp",
            "res/db_prefab.bmp",
            "res/db_standart.bmp",
            "res/desc_editor_toolbar.bmp",
            "res/down_arr.ico",
            "res/down_arrow.ico",
            "res/dynamichelp.bmp",
            "res/edit_mod.bmp",
            "res/editor_icon.bmp",
            "res/editor_icon.ico",
            "res/editor_icon16.ico",
            "res/editwithbutton.bmp",
            "res/editwithbutton_dark.bmp",
            "res/editwithbutton_light.bmp",
            "res/entitybar.bmp",
            "res/error_report.bmp",
            "res/expand1.ico",
            "res/expand2.ico",
            "res/faceit_playbar.bmp",
            "res/faceit_slidersbar.bmp",
            "res/faceit_spline_bar.bmp",
            "res/facejoystickbar.bmp",
            "res/facesequence_bar.bmp",
            "res/facialsequence_bar.bmp",
            "res/feedback.ico",
            "res/file_browse.ico",
            "res/filesimage.bmp",
            "res/filestatus.bmp",
            "res/flowgraph_debugger.bmp",
            "res/flowgraph_toolbar.bmp",
            "res/folder.ico",
            "res/fopen_back.ico",
            "res/fopen_up.ico",
            "res/grid.ico",
            "res/handDrag.cur",
            "res/hit.cur",
            "res/hypergraph.ico",
            "res/hypergraph_components.bmp",
            "res/hypergraph_delete.ico",
            "res/hypergraphgripper.ico",
            "res/hypergraphtree.bmp",
            "res/ico00001.ico",
            "res/ico00002.ico",
            "res/icon1.ico",
            "res/icon_delete.ico",
            "res/icon_export.ico",
            "res/icon_import.ico",
            "res/icon_layers.ico",
            "res/icon_lock.ico",
            "res/icon_new.ico",
            "res/icon_pause.ico",
            "res/icon_play.ico",
            "res/icon_question.bmp",
            "res/icon_question.ico",
            "res/icon_tcoll.ico",
            "res/idb_.bmp",
            "res/layer_buttons.bmp",
            "res/layouts.bmp",
            "res/lc_connecting.ico",
            "res/lc_running.ico",
            "res/leftright.cur",
            "res/litebulb.bmp",
            "res/lock_sel.bmp",
            "res/locksele.bmp",
            "res/logo.bmp",
            "res/mainfram.bmp",
            "res/mann_tagdef_toolbar.bmp",
            "res/mann_tagdef_tree.bmp",
            "res/manneqinbar.bmp",
            "res/mannequin_fragment_editor_toolbar.bmp",
            "res/mannequin_previewer_toolbar.bmp",
            "res/mannequin_transition_editor_toolbar.bmp",
            "res/material.bmp",
            "res/material_browser.bmp",
            "res/materialbar.bmp",
            "res/maximize.ico",
            "res/minus.ico",
            "res/misc_bar.bmp",
            "res/model_viewport_dock.bmp",
            "res/model_viewport_fullscreen.bmp",
            "res/motion_b.bmp",
            "res/nodrop.cur",
            "res/object_move.cur",
            "res/object_rotate.cur",
            "res/object_scale.cur",
            "res/objectsbrowser.bmp",
            "res/panel_ve.bmp",
            "res/panel_veg.bmp",
            "res/particles_tree.bmp",
            "res/particlesbar.bmp",
            "res/pick.bmp",
            "res/pick_cursor.cur",
            "res/plus.ico",
            "res/pointerDragItem.cur",
            "res/pointerHit.cur",
            "res/pointer_.cur",
            "res/pointer_flatten.cur",
            "res/pointer_getheight.cur",
            "res/pointer_link.cur",
            "res/pointer_linknow.cur",
            "res/pointer_minus.cur",
            "res/pointer_plus.cur",
            "res/pointer_smooth.cur",
            "res/pointer_so_sel_plus.cur",
            "res/pointer_so_select.cur",
            "res/prefabs_tree.bmp",
            "res/progslider_end.bmp",
            "res/progslider_marker.bmp",
            "res/progslider_start.bmp",
            "res/progslider_thumb.bmp",
            "res/progslider_track.bmp",
            "res/properties.bmp",
            "res/psd.ico",
            "res/rename.ico",
            "res/replace.ico",
            "res/ribbon_system_button.png",
            "res/sandbox_dark.bmp",
            "res/sandbox_light.bmp",
            "res/sb_welcome_dark.bmp",
            "res/sb_welcome_light.bmp",
            "res/selectobj.bmp",
            "res/seq_1_colour_keys.bmp",
            "res/seq_2_colour_keys.bmp",
            "res/seq_3_colour_keys.bmp",
            "res/seq_4_colour_keys.bmp",
            "res/seq_5_colour_keys.bmp",
            "res/seq_6_colour_keys.bmp",
            "res/seq_7_colour_keys.bmp",
            "res/sequencer_keys.bmp",
            "res/sequencer_nodes.bmp",
            "res/sostates.bmp",
            "res/soundfiles.bmp",
            "res/soundmood.bmp",
            "res/soundpre.bmp",
            "res/source_control.ico",
            "res/spline_edit_bar.bmp",
            "res/splineextrabar.bmp",
            "res/status_mem_low1.ico",
            "res/status_mem_low2.ico",
            "res/status_mem_ok.ico",
            "res/stdviews.bmp",
            "res/subobjseltype.bmp",
            "res/sw_mapbar.bmp",
            "res/sw_toolbar.bmp",
            "res/tabPanel.bmp",
            "res/tiff.ico",
            "res/toolbar1.bmp",
            "res/toolbar2.bmp",
            "res/toolbox.bmp",
            "res/tree_vie.bmp",
            "res/uieditor_main.bmp",
            "res/up_arrow.ico",
            "res/value_types.bmp",
            "res/veed_tree.bmp",
            "res/vegetati.bmp",
            "res/vegtree.bmp",
            "res/video_record.ico",
            "res/warning16x16.ico",
            "res/water.bmp",
            "res/work_in_progress_icon.ico",
        ]
    }
    Group {
        name: "DataBase / ParticlesEditor"
        files: [
            "Particles/ParticleDialog.cpp",
            "Particles/ParticleDialog.h",
            "Particles/ParticleItem.cpp",
            "Particles/ParticleItem.h",
            "Particles/ParticleLibrary.cpp",
            "Particles/ParticleLibrary.h",
            "Particles/ParticleManager.cpp",
            "Particles/ParticleManager.h",
            "Util/VariableTypeInfo.h",
        ]
    }
    Group {
        name: "DataBase / EntityArchetype"
        files: [
            "EntityProtLibDialog.cpp",
            "EntityProtLibDialog.h",
            "EntityPrototype.cpp",
            "EntityPrototype.h",
            "EntityPrototypeLibrary.cpp",
            "EntityPrototypeLibrary.h",
            "EntityPrototypeManager.cpp",
            "EntityPrototypeManager.h",
            "EntityScriptDialog.cpp",
            "EntityScriptDialog.h",
            "SelectEntityClsDialog.cpp",
            "SelectEntityClsDialog.h",
        ]
    }
    Group {
        name: "DataBase / PrefabsEditor"
        prefix: "Prefabs/"
        files: [
            "PrefabEvents.cpp",
            "PrefabEvents.h",
            "PrefabItem.cpp",
            "PrefabItem.h",
            "PrefabLibrary.cpp",
            "PrefabLibrary.h",
            "PrefabManager.cpp",
            "PrefabManager.h",
        ]
    }
    Group {
        name: "Shaders"
        files: [
            "ShaderCache.cpp",
            "ShaderCache.h",
        ]
    }
    Group {
        name: "ProjectManagement / Data"
        prefix: "ProjectManagement/Data/"
        files: [
            "ProjectManager.cpp",
            "ProjectManager.h",
            "TemplateManager.cpp",
            "TemplateManager.h",
        ]
    }
    Group {
        name: "ProjectManagement / Model"
        prefix: "ProjectManagement/Model/"
        files: [
            "ProjectsModel.cpp",
            "ProjectsModel.h",
            "SubIconContainer.cpp",
            "SubIconContainer.h",
            "TemplatesModel.cpp",
            "TemplatesModel.h",
        ]
    }
    Group {
        name: "ProjectManagement / UI"
        prefix: "ProjectManagement/UI/"
        files: [
            "CreateProjectPanel.cpp",
            "CreateProjectPanel.h",
            "OpenProjectPanel.cpp",
            "OpenProjectPanel.h",
            "SelectProjectDialog.cpp",
            "SelectProjectDialog.h",
        ]
    }
    Group {
        name: "ProjectManagement"
        prefix: "ProjectManagement/"
        files: [
            "EditorCommands_Project.cpp",
            "Utils.cpp",
            "Utils.h",
        ]
    }
    Group {
        name: "Python"
        files: [
            "Dialogs/PythonScriptsPanel.cpp",
            "Dialogs/PythonScriptsPanel.h",
            "PythonEditorFuncs.cpp",
            "Util/BoostPythonHelpers.cpp",
            "Util/BoostPythonHelpers.h",
        ]
    }
    Group {
        name: "MainFrame"
        prefix: "QT/"
        files: [
            "QMainFrameMenuBar.cpp",
            "QMainFrameMenuBar.h",
            "QtMainFrame.cpp",
            "QtMainFrame.h",
            "QtMainFrameWidgets.h",
            "TraySearchBox.cpp",
            "TraySearchBox.h",
        ]
    }
    Group {
        name: "MainFrame / About"
        files: [
            "AboutDialog.cpp",
            "AboutDialog.h",
        ]
    }
    Group {
        name: "MainFrame / Splash"
        files: [
            "SplashScreen.cpp",
            "SplashScreen.h",
        ]
    }
    Group {
        name: "MainFrame / TabPaneManager"
        prefix: "QT/"
        files: [
            "QToolTabManager.cpp",
            "QToolTabManager.h",
        ]
    }
    Group {
        name: "Util / Serialization"
        files: [
            "Include/Serialization/GUID.h",
            "ResourceSelectorHost.cpp",
            "ResourceSelectorHost.h",
            "Serialization.h",
            "Serialization/PropertyRowEntityLink.cpp",
            "Serialization/PropertyRowEntityLink.h",
            "Serialization/PropertyRowPrefabLink.cpp",
            "Serialization/PropertyRowPrefabLink.h",
            "Serialization/VariableIArchive.cpp",
            "Serialization/VariableIArchive.h",
            "Serialization/VariableOArchive.cpp",
            "Serialization/VariableOArchive.h",
        ]
    }
    Group {
        name: "Util / Serialization / Decorators"
        prefix: "Include/Serialization/Decorators/"
        files: [
            "EntityLink.h",
        ]
    }
    Group {
        name: "Terrain"
        files: [
            "Terrain/GenerationParam.cpp",
            "Terrain/GenerationParam.h",
            "Terrain/Heightmap.cpp",
            "Terrain/Heightmap.h",
            "Terrain/Layer.cpp",
            "Terrain/Layer.h",
            "Terrain/Noise.cpp",
            "Terrain/Noise.h",
            "Terrain/RGBLayer.cpp",
            "Terrain/RGBLayer.h",
            "Terrain/SurfaceType.cpp",
            "Terrain/SurfaceType.h",
            "Terrain/TerrainBeachGen.cpp",
            "Terrain/TerrainBeachGen.h",
            "Terrain/TerrainCommands.cpp",
            "Terrain/TerrainCommon.h",
            "Terrain/TerrainDebugger.cpp",
            "Terrain/TerrainEditor.cpp",
            "Terrain/TerrainEditor.h",
            "Terrain/TerrainGrid.cpp",
            "Terrain/TerrainGrid.h",
            "Terrain/TerrainLayerModel.cpp",
            "Terrain/TerrainLayerModel.h",
            "Terrain/TerrainLayerTexGen.cpp",
            "Terrain/TerrainLayerTexGen.h",
            "Terrain/TerrainLayerUndoObject.cpp",
            "Terrain/TerrainLayerUndoObject.h",
            "Terrain/TerrainLayerView.cpp",
            "Terrain/TerrainLayerView.h",
            "Terrain/TerrainLightGen.cpp",
            "Terrain/TerrainLightGen.h",
            "Terrain/TerrainManager.cpp",
            "Terrain/TerrainManager.h",
            "Terrain/TerrainSculptPanel.cpp",
            "Terrain/TerrainSculptPanel.h",
            "Terrain/TerrainTexGen.cpp",
            "Terrain/TerrainTexGen.h",
            "Terrain/TextureCompression.cpp",
            "Terrain/TextureCompression.h",
            "TerrainDialog.cpp",
            "TerrainDialog.h",
            "TerrainFormulaDlg.cpp",
            "TerrainFormulaDlg.h",
            "TerrainLighting.h",
            "TerrainTextureExport.cpp",
            "TerrainTextureExport.h",
            "TopRendererWnd.cpp",
            "TopRendererWnd.h",
            "Util/DynamicArray2D.cpp",
            "Util/DynamicArray2D.h",
            "Util/ImagePainter.cpp",
            "Util/ImagePainter.h",
        ]
    }
    Group {
        name: "Terrain / Dialogs"
        files: [
            "ResizeResolutionDialog.cpp",
            "ResizeResolutionDialog.h",
            "Terrain/Dialogs/ResizeTerrainDialog.cpp",
            "Terrain/Dialogs/ResizeTerrainDialog.h",
            "Terrain/Dialogs/ResizeTerrainTextureDialog.cpp",
            "Terrain/Dialogs/ResizeTerrainTextureDialog.h",
        ]
    }
    Group {
        name: "Terrain / Sky Accessiblity"
        prefix: "Terrain/Sky Accessibility/"
        files: [
            "HeightmapAccessibility.h",
            "HorizonTracker.h",
        ]
    }
    Group {
        name: "Terrain / Ui"
        prefix: "Terrain/Ui/"
        files: [
            "GenerateHeightmapUi.cpp",
            "GenerateHeightmapUi.h",
            "GenerateTerrainTextureUi.cpp",
            "GenerateTerrainTextureUi.h",
            "TerrainTextureDimensionsUi.cpp",
            "TerrainTextureDimensionsUi.h",
        ]
    }
    Group {
        name: "Terrain / Tools / MiniMap"
        files: [
            "MinimapPanel.cpp",
            "MinimapPanel.h",
            "TerrainMiniMapTool.cpp",
            "TerrainMiniMapTool.h",
        ]
    }
    Group {
        name: "Terrain / Tools / MoveTool"
        files: [
            "TerrainMoveTool.cpp",
            "TerrainMoveTool.h",
        ]
    }
    Group {
        name: "Terrain / Tools / TerrainBrushTool"
        prefix: "Terrain/"
        files: [
            "TerrainBrushTool.cpp",
            "TerrainBrushTool.h",
        ]
    }
    Group {
        name: "Terrain / Tools / TexturePainter"
        files: [
            "Terrain/TerrainLayerPanel.cpp",
            "Terrain/TerrainLayerPanel.h",
            "TerrainTexturePainter.cpp",
            "TerrainTexturePainter.h",
        ]
    }
    Group {
        name: "Test"
        prefix: "Test/"
        files: [
            "/PythonTest.cpp",
        ]
    }
    Group {
        name: "Core / FileMonitor"
        prefix: "Util/"
        files: [
            "FileChangeMonitor.cpp",
            "FileChangeMonitor.h",
        ]
    }
    Group {
        name: "Core / LevelIndependentFiles"
        files: [
            "LevelIndependentFileMan.cpp",
            "LevelIndependentFileMan.h",
        ]
    }
    Group {
        name: "Core / Undo"
        prefix: "Undo/"
        files: [
            "CommandHistory.cpp",
            "CommandHistory.h",
            "Undo.cpp",
            "Undo.h",
        ]
    }
    Group {
        name: "Util / Math"
        prefix: "Util/"
        files: [
            "Triangulate.cpp",
            "Triangulate.h",
        ]
    }
    Group {
        name: "Util / Ruler"
        prefix: "Util/"
        files: [
            "Ruler.cpp",
            "Ruler.h",
            "RulerPoint.cpp",
            "RulerPoint.h",
        ]
    }
    Group {
        name: "Util"
        files: [
            "ProcessInfo.cpp",
            "ProcessInfo.h",
            "Util/AutoLogTime.cpp",
            "Util/AutoLogTime.h",
            "Util/CubemapUtils.cpp",
            "Util/CubemapUtils.h",
            "Util/EditorAutoLevelLoadTest.cpp",
            "Util/EditorAutoLevelLoadTest.h",
            "Util/FileEnum.cpp",
            "Util/FileEnum.h",
        ]
    }
    Group {
        name: "Util / Xml"
        files: [
            "DocMultiArchive.h",
            "Util/XmlTemplate.cpp",
            "Util/XmlTemplate.h",
        ]
    }
    Group {
        name: "Vegetation"
        prefix: "Vegetation/"
        files: [
            "VegetationDragDropData.cpp",
            "VegetationDragDropData.h",
            "VegetationEditor.cpp",
            "VegetationEditor.h",
            "VegetationMap.cpp",
            "VegetationMap.h",
            "VegetationModel.cpp",
            "VegetationModel.h",
            "VegetationObject.cpp",
            "VegetationObject.h",
            "VegetationTreeView.cpp",
            "VegetationTreeView.h",
        ]
    }
    Group {
        name: "Vegetation / Tools"
        prefix: "Vegetation/"
        files: [
            "VegetationEraseTool.cpp",
            "VegetationEraseTool.h",
            "VegetationPaintTool.cpp",
            "VegetationPaintTool.h",
            "VegetationPlaceTool.cpp",
            "VegetationPlaceTool.h",
            "VegetationSelectTool.cpp",
            "VegetationSelectTool.h",
        ]
    }
    Group {
        name: "Viewports"
        files: [
            "2DViewport.cpp",
            "2DViewport.h",
            "ViewManager.cpp",
            "ViewManager.h",
        ]
    }
    Group {
        name: "Viewports / QViewport"
        files: [
            "CustomResolutionDlg.cpp",
            "CustomResolutionDlg.h",
            "GotoPositionDlg.cpp",
            "GotoPositionDlg.h",
            "ManipScene.cpp",
            "ManipScene.h",
            "PanelDisplayRender.cpp",
            "PanelDisplayRender.h",
            "QT/Widgets/QViewportHeader.cpp",
            "QT/Widgets/QViewportHeader.h",
        ]
    }
    Group {
        name: "Dev"
        files: [
            "PlaygroundDockable.cpp",
            "PlaygroundDockable.h",
        ]
    }
    Group {
        name: "ResourceCompiler"
        files: [
            "Alembic/AlembicCompileDialog.cpp",
            "Alembic/AlembicCompileDialog.h",
            "Alembic/AlembicCompiler.cpp",
            "Alembic/AlembicCompiler.h",
            "Dialogs/ResourceCompilerDialog.cpp",
            "Dialogs/ResourceCompilerDialog.h",
            "ResourceCompilerHelpers.cpp",
            "ResourceCompilerHelpers.h",
        ]
    }
}
