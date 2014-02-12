import QtQuick 1.1

Rectangle {
    width: 640
    height: 360
    color: "blue"

    Rectangle
    {
        id: mainscreen_platform
        width: parent.width
        height: parent.height

        Image{
            source: "images/main_screen.png"

            Rectangle{
                id: new_game
                x: 210
                y: 110
                width: 230
                height: 52
                color: "transparent"

                MouseArea {
                    anchors.fill: new_game
                    onClicked:
                    {
                        gamepad.visible= true
                    }
                }
            }

            Rectangle{
                id: about
                x: 210
                y: 240
                width: 230
                height: 48
                color: "transparent"

                MouseArea {
                    anchors.fill: about
                    onClicked:
                    {
                        aboutscreen.visible = true
                    }
                }
            }

            Rectangle{
                id: instruction
                x: 210
                y: 176
                width: 230
                height: 48
                color: "transparent"

                MouseArea {
                    anchors.fill: parent
                    onClicked:
                    {
                        instructionscreen.visible = true
                    }
                }
            }

            Rectangle{
                id: exit
                x: 210
                y: 302
                width: 230
                height: 48
                color: "transparent"

                MouseArea {
                    anchors.fill: parent
                    onClicked:
                    {
                        Qt.quit();
                    }
                }
            }

        }
    }
}


