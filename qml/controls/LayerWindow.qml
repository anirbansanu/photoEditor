import QtQuick 2.0
import QtQuick.Controls 2.15

SmallWindow {
    id: lWindow
    width: 200
    height: 250
    smTittleText: "Layer"
    clip: true
    PropertyAnimation{
        id: lWindowAnimation
        target: lWindow
        property: 'height'
        to: if(lWindow.height == 30) return 250; else return 30
        duration: 500
        easing.type: Easing.InOutQuint
    }
    MouseArea {
        id: toggleBtn
        width: lWindow.width
        height: 30
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        onClicked: lWindowAnimation.running = true
    }

    Flickable {
        id: layerFlickable
        width: lWindow.width
        anchors.fill: parent
        anchors.topMargin: 32
        property alias layerContainer1: layerContainer1
        property alias layerContainer2: layerContainer2
        property alias layerContainer3: layerContainer3
        property alias layerContainer4: layerContainer4
        property alias layerContainer5: layerContainer5
        x: 0

        contentWidth: 180
        boundsBehavior: Flickable.StopAtBounds
        contentHeight: layerContainer1.height + layerContainer2.height + layerContainer3.height + layerContainer4.height + layerContainer5.height
        clip: true

        Column {
            id: column
            width: 200
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Rectangle {
                id: layerContainer1
                width: lWindow.width
                height: 55
                color: "#292828"
                border.color: "#ccc8c8"
                border.width: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.leftMargin: 5
            }
            Rectangle {
                id: layerContainer2
                width: lWindow.width
                height: 55
                color: "#292828"
                border.color: "#ccc8c8"
                border.width: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.leftMargin: 5
            }
            Rectangle {
                id: layerContainer3
                width: lWindow.width
                height: 55
                color: "#292828"
                border.color: "#ccc8c8"
                border.width: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.leftMargin: 5
            }
            Rectangle {
                id: layerContainer4
                width: lWindow.width
                height: 50
                color: "#292828"
                border.color: "#ccc8c8"
                border.width: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.leftMargin: 5
            }
            Rectangle {
                id: layerContainer5
                width: lWindow.width
                height: 55
                color: "#292828"
                border.color: "#ccc8c8"
                border.width: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.leftMargin: 5
            }
        }

    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}D{i:5}D{i:4}D{i:3}
}
##^##*/
