import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
Rectangle{
    id: topBarMenuBtns
    color: "#00000000"
    property int topBarMenuBtnsWidth: 500
    property int topBarMenuBtnsHeight: 30


    width: topBarMenuBtnsWidth
    height: topBarMenuBtnsHeight

    QtObject{
        id: internal

        // MOUSE OVER AND CLICK CHANGE COLOR
        property var dynamicColor: if(btnLeftMenu.down){
                                       btnLeftMenu.down ? btnColorClicked : btnColorDefault
                                   } else {
                                       btnLeftMenu.hovered ? btnColorMouseOver : btnColorDefault
                                   }

    }
    Row {
        id: topbarRow
        anchors.fill: parent
        spacing: 1
        clip: true
        TopMenusBtn{
            id: fileBtn
            text: qsTr("File")
            onClicked: {
                fileBtn.isActiveMenu = true
                editBtn.isActiveMenu = false
                viewBtn.isActiveMenu = false
                imageBtn.isActiveMenu = false
                layerBtn.isActiveMenu = false
                fileMenu.open()
            }
            Menu {
                    id: fileMenu
                    y: fileBtn.height

                    TopBarMenuItem {
                        text: qsTr("New...")

                    }
                    TopBarMenuItem {
                        text: qsTr("Open")

                    }
                    TopBarMenuItem {
                        text: qsTr("Save")

                    }
                    TopBarMenuItem {
                        text: qsTr("Save As")

                    }
                    TopBarMenuItem {
                        text: qsTr("Export As")

                    }
            }

        }
        TopMenusBtn{
            id: editBtn
            text: qsTr("Edit")
            onClicked: {
                fileBtn.isActiveMenu = false
                editBtn.isActiveMenu = true
                viewBtn.isActiveMenu = false
                imageBtn.isActiveMenu = false
                layerBtn.isActiveMenu = false
                editMenu.open()
            }
            Menu {
                    id: editMenu
                    y: editBtn.height

                    TopBarMenuItem {
                        text: qsTr("Undo")

                    }
                    TopBarMenuItem {
                        text: qsTr("Redo")

                    }
                    TopBarMenuItem {
                        text: qsTr("Cut")

                    }
                    TopBarMenuItem {
                        text: qsTr("Copy")

                    }
                    TopBarMenuItem {
                        text: qsTr("Paste")

                    }
                    TopBarMenuItem {
                        text: qsTr("Select All")

                    }
            }

        }
        TopMenusBtn{
            id: viewBtn
            text: qsTr("View")
            onClicked: {
                fileBtn.isActiveMenu = false
                editBtn.isActiveMenu = false
                viewBtn.isActiveMenu = true
                imageBtn.isActiveMenu = false
                layerBtn.isActiveMenu = false
                viewMenu.open()
            }
            Menu {
                    id: viewMenu
                    y: viewBtn.height

                    TopBarMenuItem {
                        text: qsTr("Zoom In")

                    }
                    TopBarMenuItem {
                        text: qsTr("Zoom Out")

                    }
                    TopBarMenuItem {
                        text: qsTr("Fit On Screen")

                    }
                    TopBarMenuItem {
                        text: qsTr("100%")

                    }
                    TopBarMenuItem {
                        text: qsTr("200%")

                    }

            }

        }
        TopMenusBtn{
            id: imageBtn
            property string t: "Image"
            text: t
            onClicked: {
                fileBtn.isActiveMenu = false
                editBtn.isActiveMenu = false
                viewBtn.isActiveMenu = false
                imageBtn.isActiveMenu = true
                layerBtn.isActiveMenu = false
                imageMenu.open()
            }
            Menu {
                    id: imageMenu
                    y: imageBtn.height
                    width: 200
                    TopBarMenuItem {
                        id: modeBtn
                        text: qsTr("Mode")
                        menuWidth: imageMenu.width

                        MouseArea {
                                hoverEnabled: true
                                anchors.fill: parent
                                onEntered: {
                                    modeBtnSubMenu.open()
                                    adjustmentsBtnSubMenu.close()

                                 }

                        }
                        Menu {
                            id: modeBtnSubMenu
                            x: modeBtn.width
                            TopBarMenuItem {
                                text: qsTr("Test")
                                onClicked: imageMenu.close()
                            }
                            TopBarMenuItem {
                                text: qsTr("Flip")
                                onClicked: imageMenu.close()

                            }
                        }
                    }

                    TopBarMenuItem {
                        id: adjustmentsBtn
                        text: qsTr("Adjustments")
                        menuWidth: imageMenu.width
                        MouseArea {
                                hoverEnabled: true
                                anchors.fill: parent
                                onEntered: {
                                    adjustmentsBtnSubMenu.open()
                                    modeBtnSubMenu.close()

                                }

                        }
                        Menu {
                            id: adjustmentsBtnSubMenu
                            x: adjustmentsBtn.width
                            TopBarMenuItem {
                                text: qsTr("90 degree left")
                                onClicked: imageMenu.close()

                            }
                            TopBarMenuItem {
                                text: qsTr("90 degree right")
                                onClicked: imageMenu.close()

                            }
                            TopBarMenuItem {
                                text: qsTr("180 degree left")
                                onClicked: imageMenu.close()

                            }
                            TopBarMenuItem {
                                text: qsTr("180 degree right")
                                onClicked: imageMenu.close()

                            }
                        }

                    }
                    TopBarMenuItem {
                        id: imageSizeBtn
                        text: qsTr("Image Size")
                        menuWidth: imageMenu.width
                        MouseArea {
                                hoverEnabled: true
                                anchors.fill: parent
                                onClicked: {
                                }
                                onEntered: {
                                    adjustmentsBtnSubMenu.close()
                                    modeBtnSubMenu.close()

                                }

                        }

                    }
                    TopBarMenuItem {
                        id: canvasSizeBtn
                        text: qsTr("Canvas Size")
                        menuWidth: imageMenu.width
                        MouseArea {
                                hoverEnabled: true
                                anchors.fill: parent
                                onClicked: {

                                }
                                onEntered: {
                                    adjustmentsBtnSubMenu.close()
                                    modeBtnSubMenu.close()

                                }
                        }

                    }

                    TopBarMenuItem {
                        text: qsTr("Flip")
                        menuWidth: imageMenu.width
                        MouseArea {
                                hoverEnabled: true
                                anchors.fill: parent
                                onClicked: {

                                }
                                onEntered: {
                                    adjustmentsBtnSubMenu.close()
                                    modeBtnSubMenu.close()

                                }
                        }


                    }
            }

        }
        TopMenusBtn{
            id: layerBtn
            text: qsTr("Layer")
            onClicked: {
                fileBtn.isActiveMenu = false
                editBtn.isActiveMenu = false
                viewBtn.isActiveMenu = false
                imageBtn.isActiveMenu = false
                layerBtn.isActiveMenu = true
                layerMenu.open()
            }
            Menu {
                    id: layerMenu
                    y: layerBtn.height

                    TopBarMenuItem {
                        text: qsTr("New Layer")

                    }
                    TopBarMenuItem {
                        text: qsTr("Duplicate")

                    }
                    TopBarMenuItem {
                        text: qsTr("Delete")

                    }
                    TopBarMenuItem {
                        text: qsTr("Arrange")

                    }
                    TopBarMenuItem {
                        text: qsTr("Merge")

                    }

            }
        }
    }

}
