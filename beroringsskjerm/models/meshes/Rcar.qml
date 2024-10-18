import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: car_body_1_material
    }
    DefaultMaterial {
        id: car_body_material
        diffuseColor: "#ffdd1b1b"
    }
    DefaultMaterial {
        id: glass_material
        diffuseColor: "#ff4cbdff"
    }
    // end of Materials

    Node {
        id: rootNode
        Model {
            id: body
            x: 0.430293
            y: 84.1699
            z: -7.11665
            rotation: Qt.quaternion(0.205674, 0.00247922, 0.978613, 0.00279752)
            source: "meshes/body.mesh"
            materials: [
                car_body_1_material,
                car_body_material,
                glass_material
            ]
        }
    }
}
