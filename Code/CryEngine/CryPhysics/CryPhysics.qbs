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
        "../../SDKs/qpOASES/include",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryPhysics",
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
        name: "Collisions"
        files: [
            "aabbtree.cpp",
            "aabbtree.h",
            "aabbtree_info.h",
            "boxgeom.cpp",
            "boxgeom.h",
            "bvtree.h",
            "capsulegeom.cpp",
            "capsulegeom.h",
            "cylindergeom.cpp",
            "cylindergeom.h",
            "geoman.cpp",
            "geoman.h",
            "geoman_info.h",
            "geometries.h",
            "geometry.cpp",
            "geometry.h",
            "heightfieldbv.cpp",
            "heightfieldbv.h",
            "heightfieldgeom.cpp",
            "heightfieldgeom.h",
            "intersectionchecks.cpp",
            "intersectionchecks.h",
            "linunprojectionchecks.cpp",
            "obbtree.cpp",
            "obbtree.h",
            "obbtree_info.h",
            "overlapchecks.cpp",
            "overlapchecks.h",
            "raybv.cpp",
            "raybv.h",
            "raygeom.cpp",
            "raygeom.h",
            "rotunprojectionchecks.cpp",
            "rwi.cpp",
            "singleboxtree.cpp",
            "singleboxtree.h",
            "spheregeom.cpp",
            "spheregeom.h",
            "tetrlattice.cpp",
            "tetrlattice.h",
            "trimesh.cpp",
            "trimesh.h",
            "unprojectionchecks.h",
            "voxelbv.cpp",
            "voxelbv.h",
            "voxelgeom.cpp",
            "voxelgeom.h",
        ]
    }
    Group {
        name: "Dynamics"
        files: [
            "articulatedentity.cpp",
            "articulatedentity.h",
            "livingentity.cpp",
            "livingentity.h",
            "particleentity.cpp",
            "particleentity.h",
            "physarea.cpp",
            "physicalentity.cpp",
            "physicalentity.h",
            "physicalplaceholder.cpp",
            "physicalplaceholder.h",
            "physicalworld.cpp",
            "physicalworld.h",
            "rigidbody.cpp",
            "rigidbody.h",
            "rigidentity.cpp",
            "rigidentity.h",
            "ropeentity.cpp",
            "ropeentity.h",
            "softentity.cpp",
            "softentity.h",
            "walkingrigidentity.cpp",
            "walkingrigidentity.h",
            "waterman.cpp",
            "waterman.h",
            "wheeledvehicleentity.cpp",
            "wheeledvehicleentity.h",
        ]
    }
    Group {
        name: "Utils"
        files: [
            "boolean2d.cpp",
            "boolean3d.cpp",
            "cvars.cpp",
            "cvars.h",
            "matrixnm.cpp",
            "matrixnm.h",
            "qhull.cpp",
            "quotient.h",
            "utils.cpp",
            "utils.h",
            "vectorn.h",
            "worldump.cpp",
        ]
    }
    files: [
        "CryPhysics.cpp",
        "resource.h"
    ]
}
