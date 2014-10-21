import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

Window {
    id: window
    visible: true
    width: 320
    height: 480
    Component.onCompleted: buttons.add(button)

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            id: topBar
            color: "light grey"
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            anchors.top: parent.top

            ListView {
                id: buttons
                anchors.verticalCenter: topBar.verticalCenter
                orientation: ListView.Horizontal
                delegate: button
            }
            Rectangle {
                id: button
                property var icon
                color: "#FFFFFF"
                border.color: "grey"
                border.width: 2
                height: topBar.height - 5
                width: height

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onHoveredChanged:
                    {
                        if (button.color == "#FFFFFF")
                        {
                            button.color = "light blue"
                            console.log("lulz")
                        }
                        else {
                            button.color = "#FFFFFF"
                        }
                    }

                    onClicked: {
                        if (index === 0)
                        {
                            mainArea.source = "homeScreen.qml"
                        }
                        if (index === 1)
                        {
                            mainArea.source = "managePeople.qml"
                        }
                        if (index === 2)
                        {
                            mainArea.source = ""
                        }
                    }
                }
            }
        }
        Loader {
            id: mainArea
            height: window.height - topBar.height
            width: window.width
        }
    }

}
