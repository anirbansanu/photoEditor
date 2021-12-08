import QtQuick 2.0
import QtQuick.Controls 2.15
import "../controls"

Rectangle {
    id: leftbar
    width: 44
    color: "#25282a"


    Column {
        id: leftMenuColumn
        anchors.fill: parent
        anchors.bottomMargin: 50
        spacing: 1
        LeftMenuBtn{
            id: move_tool
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            btnIconSource: "../../images/svg_images/Move_tool.png"
            onClicked: {
                move_tool.isActiveMenu = true
                selection_tool.isActiveMenu = false
                crop_tool.isActiveMenu = false
                pen_tool.isActiveMenu = false
                text_tool.isActiveMenu = false
            }

        }
        LeftMenuBtn{
            id: selection_tool
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            btnIconSource: "../../images/svg_images/selection_tool.png"
            onClicked: {
                move_tool.isActiveMenu = false
                selection_tool.isActiveMenu = true
                crop_tool.isActiveMenu = false
                pen_tool.isActiveMenu = false
                text_tool.isActiveMenu = false
            }

        }
        LeftMenuBtn{
            id: crop_tool
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            btnIconSource: "../../images/svg_images/crop_tool.png"
            onClicked: {
                move_tool.isActiveMenu = false
                selection_tool.isActiveMenu = false
                crop_tool.isActiveMenu = true
                pen_tool.isActiveMenu = false
                text_tool.isActiveMenu = false
            }

        }
        LeftMenuBtn{
            id: pen_tool
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            btnIconSource: "../../images/svg_images/pen_tool.png"
            onClicked: {
                move_tool.isActiveMenu = false
                selection_tool.isActiveMenu = false
                crop_tool.isActiveMenu = false
                pen_tool.isActiveMenu = true
                text_tool.isActiveMenu = false
            }

        }
        LeftMenuBtn{
            id: text_tool
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            btnIconSource: "../../images/svg_images/text_tool.png"
            onClicked: {
                move_tool.isActiveMenu = false
                selection_tool.isActiveMenu = false
                crop_tool.isActiveMenu = false
                pen_tool.isActiveMenu = false
                text_tool.isActiveMenu = true
            }

        }
    }
}
