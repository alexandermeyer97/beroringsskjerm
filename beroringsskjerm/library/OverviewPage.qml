//Everything View3D related is generated by ChatGPT - AM

import QtQuick 2.15
import QtQuick3D
Rectangle {
    id: overviewPage
    width: 800
    height: 600
    color: "#333333"

    View3D {
        anchors.fill: parent
        environment: SceneEnvironment {
            clearColor: background_color
            backgroundMode: SceneEnvironment.Color
        }

        // Define a PerspectiveCamera to provide a view of the 3D scene
        PerspectiveCamera {
            position: Qt.vector3d(250, 30, 300)
        }

        // 3D Scene Node to allow rotation
        Node {
            id: cubeNode

            Model {
                id: cubeModel
               // source: "file:///C:/QTSkole/beroringsskjerm/models/meshes/cube.mesh"
                source: "file:///C:/QTSkole/beroringsskjerm/models/meshes/body.mesh"
                position: Qt.vector3d(50, 0, 0)
                //scale: Qt.vector3d(30, 30, 30)
                scale: Qt.vector3d(0.7, 0.7, 0.7)
                materials: [
                    DefaultMaterial {
                        diffuseColor: "blue"  // Change the color if necessary
                    }
                ]
            }

            // Light source
            DirectionalLight {
                eulerRotation.x: -30
                eulerRotation.y: -70
            }
        }

        MouseArea {
            anchors.fill: parent
            property real lastX
            property real lastY
            property real currentAngleY: 0  // Track the current vertical rotation angle

            onPressed: {
                lastX = mouse.x
                lastY = mouse.y
            }

            onPositionChanged: {
                var dx = mouse.x - lastX
                var dy =  mouse.y - lastY
                lastX = mouse.x
                lastY = mouse.y

                // Reduce rotation speed for a more "massive" feel
                var rotationSpeed = 0.2  // Slows down the rotation

                // Rotate around Y-axis (horizontal drag)
                cubeNode.rotate(dx * rotationSpeed, Qt.vector3d(0, 1, 0), Node.SceneSpace)

                // Calculate the new vertical (X-axis) angle
                var newAngleY = currentAngleY + dy * rotationSpeed

                // Clamp the vertical rota tion between -45 and 45 degrees
                if (newAngleY > -10 && newAngleY < 10) {
                    cubeNode.rotate(dy * rotationSpeed, Qt.vector3d(1, 0, 0), Node.SceneSpace)
                    currentAngleY = newAngleY  // Update the current angle
                }
            }
        }
    }
}
