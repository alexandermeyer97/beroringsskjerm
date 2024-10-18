import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts


Window {
    id: mainWindow
    width: 1200
    height: 600
    visible: true
    title: qsTr("Hello World")
    color: "grey"

    property color background_color: isDarkMode ? "#1C1C1C" : "white"
    property int currentPage: 0
    property bool isDarkMode: false

    Info_popup {
        id: info_popup
    }

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            id: rec_top_section
            Layout.fillWidth: true
            height: 75
            color: background_color

            RowLayout {
                spacing: 40
                anchors.fill: parent
                anchors.margins: 10

                Rectangle {
                    width: 120
                    color: "transparent"
                }

                MenuBar {
                    id: menubar_driver
                    Layout.alignment: Qt.AlignLeft

                    MenuBarItem {
                        icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
                        onClicked: {
                            info_popup.clearContent();
                            info_popup.title = "Driver Information"
                            info_popup.showInfoText = true

                            let infoText = Qt.createQmlObject(`
                                import QtQuick 2.15;
                                Text {
                                    text: "Driver Information: This is a triumph! I'm making a note here: Huge success!";
                                    font.pointSize: 16;
                                    color: "white";
                                    wrapMode: Text.WordWrap;
                                    horizontalAlignment: Text.AlignHCenter;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                }
                            `, info_popup.contentContainer);

                            info_popup.open();
                        }
                    }

                    MenuBarItem {
                        id: item_temp
                        text: "Temp: " + temp_slider.get_value() + " \xB0"
                        font.pointSize: 14
                        font.bold: true

                        TopSectionPopup {
                            id: temp_popup
                            color_background: "white"

                            ColumnLayout {
                                Label {
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    text: temp_slider.get_value() + " \xB0"
                                }
                                Slider {
                                    id: temp_slider
                                    orientation: Qt.Vertical
                                    from: 16
                                    to: 28
                                    Layout.alignment: Qt.AlignHCenter
                                    function get_value() {
                                        return Math.round(value)
                                    }
                                }
                                RowLayout {
                                    Layout.alignment: Qt.AlignHCenter
                                    Label {
                                        text: "Air Condition"
                                        font.bold: true
                                    }
                                    Switch { }
                                }
                            }
                        }

                        onClicked: {
                            temp_popup.open();
                        }
                    }
                }

                MenuBar {
                    id: menubar_passenger
                    Layout.alignment: Qt.AlignRight
                    MenuBarItem {
                        icon.source: "https://www.svgrepo.com/show/58616/high-beam.svg"
                        onClicked: {
                            info_popup.clearContent();
                            info_popup.title = "Passenger Information"
                            info_popup.showInfoText = true

                            let infoText = Qt.createQmlObject(`
                                import QtQuick 2.15;
                                Text {
                                    text: "Passenger Information: Safety is the highest priority.";
                                    font.pointSize: 16;
                                    color: "white";
                                    wrapMode: Text.WordWrap;
                                    horizontalAlignment: Text.AlignHCenter;
                                    anchors.horizontalCenter: parent.horizontalCenter;
                                }
                            `, info_popup.contentContainer);

                            info_popup.open();
                        }
                    }
                }


                MenuBar {
                    id: menubar_car
                    Layout.alignment: Qt.AlignRight
                    MenuBarItem {
                        text: "Car"
                    }
                    MenuBarItem {
                        text: "Settings"
                        onClicked: {
                            mainWindow.currentPage = 0;
                        }
                    }
                }
            }
        }

        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true

            MenuSection {
                id: menuSection
                anchors.left: parent.left
                onMenuClicked: {
                    console.log("Menu clicked, updating currentPage to:", menuIndex);
                    mainWindow.currentPage = menuIndex;
                }
            }

            SettingsPage {
                id: settingsPage
                Layout.fillWidth: true
                Layout.fillHeight: true
                visible: currentPage === 1
                onDarkModeChanged: mainWindow.isDarkMode = !mainWindow.isDarkMode
            }

            OverviewPage {
                id: overviewPage
                Layout.fillWidth: true
                Layout.fillHeight: true
                visible: currentPage === 0
                //onDarkModeChanged: mainWindow.isDarkMode = !mainWindow.isDarkMode
            }

            //More pages liek the two above 0 - 6 - AM
        }
    }
}
