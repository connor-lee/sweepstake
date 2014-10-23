import QtQuick 2.0
import QtQuick.Layouts 1.1

import datamodel 1.0

Rectangle {
    height: parent.height
    width : parent.width
    color: "grey"

    DataModel {
        id: dataModel
        Component.onCompleted: {
            for (var i = 0; i < 10; i ++)
            {
                dataModel.addPlayer("bob", "bob@hotmail.com")
            }
        }
    }

    ListView {
        id: buttons
        width: parent.width - 20
        anchors.horizontalCenter: parent.horizontalCenter
        orientation: ListView.Horizontal
        delegate: person
    }

    Rectangle {
        id: person
        color: "#FFFFFF"
        border.color: "grey"
        border.width: 2
        height: 30
        width: parent.width

        RowLayout {
            anchors.fill: parent
            Rectangle
            {
                width: parent.width
                height: parent.height
                radius: 0.5
                color: "white"
                border.color: "black"
                border.width: 2
            }
        }
    }

}
