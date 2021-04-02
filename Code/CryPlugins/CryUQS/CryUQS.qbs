import qbs 1.0

Project {
    references: [
        "Client/CryUQS_Client_inline.qbs",
        "Core/CryUQS_Core.qbs",
        "DataSource_XML/CryUQS_DataSource_XML.qbs",
        "EditorPlugin/EditorUQS.qbs",
        "EditorPlugin_HistoryInspector/EditorUQS_HistoryInspector.qbs",
        "Interfaces/CryUQS_Interfaces.qbs",
        "Shared/CryUQS_Shared_inline.qbs",
        "StdLib/CryUQS_StdLib.qbs",
    ]
}
