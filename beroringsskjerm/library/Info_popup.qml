//ChatGPT was used to explain how the popup could be more dynamic with its content
//However I think it would have been better to just make another QML file for the
//car picked color. This got way over complicated - AM

import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls

Popup {
    id: info_popup
    width: 400
    height: 300
    anchors.centerIn: parent
    background: Rectangle {
        color: background_color
        anchors.fill: parent
        border.color: "white"
        radius: 20
    }

    property string title: ""
    property bool showInfoText: true
    property alias contentContainer: dynamicContent

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20

        Text {
            id: info_text
            text: info_popup.title
            font.bold: true
            font.pointSize: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            color: "white"
            visible: info_popup.showInfoText
        }

        // Dynamic Content Placeholder
        Item {
            id: dynamicContent
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
    }

    function clearContent() {
        dynamicContent.children.forEach(function (child) {
            child.destroy();
        });
    }
}
