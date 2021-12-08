import QtQuick 2.0
import QtQuick.Controls 2.15

SmallWindow {
    id: pWindow
    width: 180
    height: 30
    smTittleText: "Property"
    clip: true
    property color labelColorDefault: "#d1d2d3"
        PropertyAnimation{
            id: animationMenu
            target: pWindow
            property: 'height'
            to: if(pWindow.height == 30) return 250; else return 30
            duration: 500
            easing.type: Easing.InOutQuint
        }
        MouseArea {
            id: toggleBtn
            width: 200
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            onClicked: animationMenu.running = true
        }
        Column {
            id: column
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: toggleBtn.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 0

        Label {
            id: brightness
            color: labelColorDefault
            text: qsTr("Brightness")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 8
            font.bold: true
            font.pointSize: 6
            font.family: "Courier"
            anchors.rightMargin: 5
            anchors.leftMargin: 5
        }

        Slider {
            id: brightnessSlider
            x: 0
            height: 36
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: brightness.bottom
            anchors.topMargin: 0
            transformOrigin: Item.Left
            anchors.rightMargin: 0
            anchors.leftMargin: 5
            scale: 0.6
            padding: 6
            rightPadding: 6
            bottomPadding: 6
            leftPadding: 6
            topPadding: 6
            font.pointSize: 6
            to: 100
            value: 50
        }
        Label {
            id: contrast
            color: labelColorDefault
            text: qsTr("Contrast")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: brightnessSlider.bottom
            anchors.topMargin: 0
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.pointSize: 6
            font.family: "Courier"
            anchors.rightMargin: 5
            anchors.leftMargin: 5
        }

        Slider {
            id: contrastSlider
            x: 0
            height: 36
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: contrast.bottom
            anchors.topMargin: 0
            transformOrigin: Item.Left
            anchors.rightMargin: 0
            anchors.leftMargin: 5
            scale: 0.6
            padding: 6
            rightPadding: 6
            bottomPadding: 6
            leftPadding: 6
            topPadding: 6
            font.pointSize: 6
            to: 100
            value: 50
        }
        Label {
            id: saturation
            color: labelColorDefault
            text: qsTr("Saturation")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: contrastSlider.bottom
            anchors.topMargin: 0
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.pointSize: 6
            font.family: "Courier"
            anchors.rightMargin: 5
            anchors.leftMargin: 5
        }

        Slider {
            id: saturationSlider
            x: 0
            height: 36
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: saturation.bottom
            anchors.topMargin: 0
            transformOrigin: Item.Left
            anchors.rightMargin: 0
            anchors.leftMargin: 5
            scale: 0.6
            padding: 6
            rightPadding: 6
            bottomPadding: 6
            leftPadding: 6
            topPadding: 6
            font.pointSize: 6
            to: 100
            value: 50
        }
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}
}
##^##*/
