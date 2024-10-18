import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    id: settingsPage
    width: 800
    height: 600
    color: "#2d2d2d"

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "Settings"
            color: "white"
            font.pointSize: 24
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: mainWindow.isDarkMode ? "Disable Dark Mode" : "Enable Dark Mode"
            font.bold: true
            width: 200
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                width: parent.width
                height: parent.height
                color: "green"
                radius: 20
            }
            onClicked: settingsPage.darkModeChanged()
        }

        Button {
            text: "Car Color"
            font.bold: true
            width: 200
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                width: parent.width
                height: parent.height
                color: "green"
                radius: 20
            }
            onClicked: {
                info_popup.clearContent();
                info_popup.title = "Car Color"
                info_popup.showInfoText = true

                let rowLayout = Qt.createQmlObject(`
                    import QtQuick 2.15
                    import QtQuick.Layouts 2.15
                    RowLayout {
                        spacing: 30
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 30
                    }`, info_popup.contentContainer)

                let colors = ["red", "green", "blue", "yellow", "purple"]
                for (let i = 0; i < colors.length; i++) {
                    let colorButton = Qt.createComponent("qrc:/beroringsskjerm/library/ColorButton.qml").createObject(rowLayout, {
                        buttonColor: colors[i],
                        //TODO: Why doesnt this work? The buttons never change?
                        width: 80,
                        height: 80
                    })
                    colorButton.onClicked.connect(() => {
                        overviewPage.modelColor = colors[i];
                        info_popup.close();
                    })
                }
                info_popup.open();
            }
        }
    }

    signal darkModeChanged()
}
