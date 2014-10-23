import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

import datamodel 1.0

Window {
    id: window
    visible: true
    width: 320
    height: 480

    Loader {
        id: mainArea
        z: 2
        height: parent.height
        width: parent.width
        onSourceChanged: {
            if (mainArea.source != "")
            {
                background.visible = true;
            }
            else
            {
                background.visible = false;
            }
        }
    }


    Rectangle {
        anchors.fill: parent
        id: background
        color: "black"
        opacity: 0.5
        visible: false

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("fuck you")
            }
        }
    }


    ColumnLayout {
        anchors.fill: parent
    }
}
