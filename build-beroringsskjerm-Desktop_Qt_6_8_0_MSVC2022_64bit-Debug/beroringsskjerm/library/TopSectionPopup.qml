import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts

Popup{
//    width: 200
//    height: 300
    y: parent.height + 5

    property color color_background: "green"

    background: Rectangle{
        color: color_background
        radius: 20
    }
}
