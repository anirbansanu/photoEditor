import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "controls"
import "ui" as UI

Window {
    id: mainWindow
    width: 640
    height: 480
    minimumHeight: 400
    minimumWidth: 600
    visible: true
    color: "#363636"
    title: qsTr("Edipic")

    Rectangle {
        id: bg
        color: "#353535"
        anchors.fill: parent

        Rectangle {
            id: topbar
            height: 30
            color: "#1e1e1e"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top

            TopBarMenuBtns{
                id: mainMenus
            }
        }
        UI.LeftMenu
        {
            id: leftMenu
            anchors.left: parent.left
            anchors.top: topbar.bottom
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
        }

        UI.Panels{
            id: rightPanels
            anchors.right: parent.right
            anchors.top: topbar.bottom
            anchors.bottom: parent.bottom
            clip: true
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            color: "#363436"
        }

        UI.WorkSpace{
            id: workSpace
            anchors.left: leftMenu.right
            anchors.right: rightPanels.left
            anchors.top: topbar.bottom
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }
    }

}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:12}
}
##^##*/
