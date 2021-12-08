import QtQuick 2.0
import QtQuick.Controls 2.15
import "../controls"


Rectangle  {
    id: panels
    x: 460
    width: 205
    color: "#363436"
    border.color: "#363030"
    border.width: 0

    Flickable {
        id: flickable
        width: 200
        height: panels.height
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.rightMargin: 0

        property alias propertyWindow: propertyWindow
        property alias propertyWindow1: propertyWindow1
        property alias layerWindow: layerWindow
        property alias propertyWindow2: propertyWindow2
        x: 0

        contentWidth: 200
        boundsBehavior: Flickable.StopAtBounds
        contentHeight: propertyWindow.height + propertyWindow1.height + layerWindow.height + propertyWindow2.height
        clip: true
        Column {
            id: innerRightbar
            anchors.fill: parent
            anchors.rightMargin: 0
            spacing: 0
            clip: true

            PropertyWindow {
                id: propertyWindow
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }
            PropertyWindow {
                id: propertyWindow1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }
            LayerWindow {
                id: layerWindow
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
            }
            PropertyWindow {
                id: propertyWindow2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

        }
    }


}
