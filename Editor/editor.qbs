import qbs

CppApplication {
    consoleApplication: true
    files: []

    Group {     // Properties for the produced executable
        fileTagsFilter: "application"
        qbs.install: true
        qbs.installDir: "bin"
    }
}
