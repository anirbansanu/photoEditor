import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

MenuItem {
    id: subMenuBtn
    text: "New..."
    property color topBarMenuBtnsColorDefault: "#23272E"
    property color topBarMenuBtnsColorMouseOver: "#1c1d20"
    property color topBarMenuBtnsColorClicked: "#fc03f0"
    property color topBarMenuBtnsActiveMenuColor: "#c73eb9"
    property color topBarMenuBtnsActiveMenuColorRight: "#0a0a0a"
    property int menuWidth: 200
    width: menuWidth
    QtObject{
        id: internalEvent

        // MOUSE OVER AND CLICK CHANGE COLOR
        property var dynamicColor: if(subMenuBtn.down){
                                       subMenuBtn.down ? topBarMenuBtnsColorClicked : topBarMenuBtnsColorDefault
                                   } else {
                                       subMenuBtn.hovered ? topBarMenuBtnsColorMouseOver : topBarMenuBtnsColorDefault
                                   }

    }
    background: Rectangle{
        id: newBtn
        implicitWidth: subMenuBtn.menuWidth
        implicitHeight: 30
        color: internalEvent.dynamicColor
        border.color: internalEvent.dynamicColor
        border.width: 5

    }
    contentItem: Item{
        anchors.fill: parent
        id: subMenuBtnContent

        Text{
            color: "#ffffff"
            text: subMenuBtn.text
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: parent.verticalCenter
            font: subMenuBtn.font
            padding: 15
        }
    }
}

