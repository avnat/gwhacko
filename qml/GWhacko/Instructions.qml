import QtQuick 1.1


Rectangle {
    width: 640
    height: 360
    color: "blue"

    Rectangle
    {
        id: myrect
        width: parent.width
        height: parent.height

        Image{
            source: "images/instructions.png"
            Rectangle{
                id: back
                x: 7
                y: 325
                width: parent.width/2
                height: 32
                color: "transparent"

                MouseArea {
                    anchors.fill: parent
                    onClicked:
                    {
                        homescreen.visible = true
                    }
                }
            }

            Rectangle{
                id: continueButton
                x: 318
                y: 325
                width: parent.width/2
                height: 32
                color: "transparent"

                MouseArea {
                    anchors.fill: parent
                    onClicked:
                    {
                        gamepad.visible = true
                    }
                }
        }
    }
}
}
