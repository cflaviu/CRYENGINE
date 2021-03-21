import qbs 1.0

Project {
    references: [
        "DedicatedLauncher/DedicatedLauncher.qbs",
        "LinuxLauncher/LinuxLauncher.qbs",
        "WindowsLauncher/WindowsLauncher.qbs",
    ]
}
