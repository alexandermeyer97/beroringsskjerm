import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: material_material
        diffuseColor: "#ffcccccc"
    }
    // end of Materials

    Node {
        id: cube_obj
        Model {
            id: cube
            source: "meshes/cube.mesh"
            materials: [
                material_material
            ]
        }
    }
}
