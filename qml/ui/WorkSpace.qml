import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: workspaceContainer
    width: 200
    height: 200
    color: "#191919"

    Rectangle {
        id: workspace
        x: 0
        y: 0
        color: "#040404"
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10

        Canvas {
            id: mycanvas
            anchors.fill: parent
            onPaint: {
                var ctx = getContext("2d");
                ctx.fillStyle = Qt.rgba(1, 0, 1, 1);
                ctx.fillRect(0, 0, width, height);
            }

        }
    }
}
