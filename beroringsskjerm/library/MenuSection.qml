//ChatGPT used to repear the ToolButton - AM

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    id: menu_section
    width: 100
    Layout.fillHeight: true
    color: background_color

    property int currentPage

    property int iconWidth: 40
    property int iconHeight: 40
    property int buttonHeight: 60

    Column {
        anchors.fill: parent
        anchors.verticalCenter: parent.verticalCenter
        spacing: 16
        height: implicitHeight
        width: parent.width

        ToolButton {
            icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
            icon.width: menu_section.iconWidth
            icon.height: menu_section.iconHeight
            width: parent.width
            height: menu_section.buttonHeight
            onClicked: {
                console.log("ToolButton 0 clicked");
                menu_section.menuClicked(0);
            }
        }

        ToolButton {
            icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
            icon.width: menu_section.iconWidth
            icon.height: menu_section.iconHeight
            width: parent.width
            height: menu_section.buttonHeight
            onClicked: {
                console.log("ToolButton 1 clicked");
                menu_section.menuClicked(1);
            }
        }

        ToolButton {
            icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
            icon.width: menu_section.iconWidth
            icon.height: menu_section.iconHeight
            width: parent.width
            height: menu_section.buttonHeight
            onClicked: {
                console.log("ToolButton 1 clicked");
                menu_section.menuClicked(1);
            }
        }

        ToolButton {
            icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
            icon.width: menu_section.iconWidth
            icon.height: menu_section.iconHeight
            width: parent.width
            height: menu_section.buttonHeight
            onClicked: {
                console.log("ToolButton 1 clicked");
                menu_section.menuClicked(1);
            }
        }

        ToolButton {
            icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
            icon.width: menu_section.iconWidth
            icon.height: menu_section.iconHeight
            width: parent.width
            height: menu_section.buttonHeight
            onClicked: {
                console.log("ToolButton 1 clicked");
                menu_section.menuClicked(1);
            }
        }

        ToolButton {
            icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
            icon.width: menu_section.iconWidth
            icon.height: menu_section.iconHeight
            width: parent.width
            height: menu_section.buttonHeight
            onClicked: {
                console.log("ToolButton 1 clicked");
                menu_section.menuClicked(1);
            }
        }

        ToolButton {
            icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
            icon.width: menu_section.iconWidth
            icon.height: menu_section.iconHeight
            width: parent.width
            height: menu_section.buttonHeight
            onClicked: {
                console.log("ToolButton 1 clicked");
                menu_section.menuClicked(1);
            }
        }
    }

    signal menuClicked(int menuIndex)
}
