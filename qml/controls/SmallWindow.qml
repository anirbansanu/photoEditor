import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: smWindow
    width: 180
    height: 220
    color: "#4f4f53"
    border.color: "#a0a4a7"
    border.width: 0
    property string smTittleText: "Tittle"
    Rectangle {
        id: smTopbar
        height: 30
        color: "#202020"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top

        Text {
            id: smTittle
            color: "#b6b7b8"
            text: smTittleText
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            minimumPixelSize: 10
            font.pointSize: 12
            anchors.bottomMargin: 2
            anchors.leftMargin: 5
            anchors.rightMargin: 25
        }

        TopBarButton {
            id: topBarButton
            anchors.left: smTittle.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 3
            anchors.leftMargin: 0
        }

        Rectangle {
            id: rectangle
            y: 16
            height: 3
            color: "#666666"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}
}
##^##*/
