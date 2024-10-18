import QtQuick 2.15
import QtQuick.Controls 2.15

ToolButton {
    id: colorButton
    property color buttonColor: "red"

    //TODO, This also doesnt fix the button sizes.. ? - AM
    width: 75
    height: 75
    background: Rectangle {
        color: colorButton.buttonColor
        radius: 15
    }

    Component.onCompleted: {
        background.color = buttonColor;
    }
}
