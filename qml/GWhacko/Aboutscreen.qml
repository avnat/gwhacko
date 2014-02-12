import QtQuick 1.1


Rectangle {
    width: 640
    height: 360
    color: "blue"

    Rectangle
    {
        id: myrect
        x: 0
        y: 0
        width: parent.width
        height: parent.height

        Image{
            source: "images/aboutscreen.png"
            Rectangle{
                id: aboutbutton
                x: 7
                y: 325
                width: 625
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
        }
    }
}
