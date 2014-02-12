import QtQuick 1.1
import "logic.js" as JavaFunctions

Rectangle{
    width: 640
    height: 360

    Rectangle{
        id: platform
        width: parent.width
        height: parent.height

        Image{
            id:plate
            source: "images/plate_final.png" // background image
            width: 640
            height: 360

            Rectangle
            {
                id: score
                anchors.bottom: parent.bottom
               // anchors.left: back.right
                anchors.right: parent.right
                width: parent.width/2
                height: 35
                color: "transparent"
                Text{
                    id: score_board
                    font.bold: true
                    font.pointSize: 10
                    anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter
                    text: "Score: 0"
                }
            }
        }

        Rectangle
        {
            id: back
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            width: parent.width/2
            height: 35
            color: "transparent"

            Text{
                id: back_text1
                font.bold: true
                font.pointSize: 10
                anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter
                text: "Back"
            }

            MouseArea{
                anchors.fill: back
                onClicked:{
                    JavaFunctions.clear_values();
                    timer1.interval = 2000
                    score_board.text= "Score: 0"
                    homescreen.visible = true
                }
            }
        }

        Image {
            id: doll // The image of the good guy or bad guy in the game
            x:40
            y:0
            source:"images/snow_man.png"
            width: 110
            height: 95

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    function_block.visibility();
                    score_board.text = "Score: " + JavaFunctions.count_score(); // count the score
                }
            }
        }

        Image {
            id: doll1 // The image of the good guy or bad guy in the game
            x:80
            y:0
            source:"images/snow_man.png"
            width: 110
            height: 95

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    function_block.visibility1();
                    score_board.text = "Score: " + JavaFunctions.count_score1(); // count the score
                }
            }
        }

        Item {
            id: function_block
            function visibility()
            {
                if(doll.visible == true)
                {
                    doll.visible = false;
                }
                else
                {
                    doll.visible = true;
                }
            }

            function visibility1()
            {
                if(doll1.visible == true)
                {
                    doll1.visible = false;
                }
                else
                {
                    doll1.visible = true;
                }
            }

            function generate_image()
            {
                var a=1,x=0;
                x = JavaFunctions.generaterandomness(); //chooses which doll appears
                a = JavaFunctions.generaterandomness1(); //chooses which doll appears
                if(x===0)
                {
                    doll.source =  "images/santa.png";
                    doll.x = JavaFunctions.x;
                    doll.y = JavaFunctions.y;
                }

                if(x== 6)
                {
                    doll.source =  "images/reindeer.png";
                    doll.x = JavaFunctions.x;
                    doll.y = JavaFunctions.y;
                }

                if(x==5)
                {
                    doll.source =  "images/snow_man.png";
                    doll.x = JavaFunctions.x;
                    doll.y = JavaFunctions.y;
                }

                if(x==4)
                {
                    doll.source =  "images/smiling_girl.png";
                    doll.x = JavaFunctions.x;
                    doll.y = JavaFunctions.y;
                }

                if(x==3 )
                {
                    doll.source =  "images/bad_man.png";
                    doll.x = JavaFunctions.x;
                    doll.y = JavaFunctions.y;
                }

                if(x==2)
                {
                    doll.source =  "images/bad_man1.png";
                    doll.x = JavaFunctions.x;
                    doll.y = JavaFunctions.y;
                }

                if(x==1 )
                {
                    doll.source =  "images/bad_man2.png";
                    doll.x = JavaFunctions.x;
                    doll.y = JavaFunctions.y;
                }

                if(x==7 )
                {
                    doll.source =  "images/bad_man4.png";
                    doll.x = JavaFunctions.x;
                    doll.y = JavaFunctions.y;
                }

                if(a==0 )
                {

                    doll1.source = "images/santa.png";
                    doll1.x = JavaFunctions.x1;
                    doll1.y = JavaFunctions.y1;
                }

                if(a== 6)
                {
                    doll1.source ="images/reindeer.png";
                    doll1.x = JavaFunctions.x1;
                    doll1.y = JavaFunctions.y1;
                }

                if(a==5)
                {
                    doll1.source ="images/snow_man.png";
                    doll1.x = JavaFunctions.x1;
                    doll1.y = JavaFunctions.y1;

                }

                if(a==4)
                {
                    doll1.source = "images/smiling_girl.png";
                    doll1.x = JavaFunctions.x1;
                    doll1.y = JavaFunctions.y1;
                }

                if(a==3 )
                {
                    doll1.source =  "images/bad_man.png";
                    doll1.x = JavaFunctions.x1;
                    doll1.y = JavaFunctions.y1;
                }

                if(a==2)
                {
                    doll1.source ="images/bad_man1.png";
                    doll1.x = JavaFunctions.x1;
                    doll1.y = JavaFunctions.y1;
                }

                if(a==1 )
                {
                    doll1.source =  "images/bad_man2.png";
                    doll1.x = JavaFunctions.x1;
                    doll1.y = JavaFunctions.y1;
                }

                if(a==7 )
                {
                    doll1.source = "images/bad_man4.png";
                    doll1.x = JavaFunctions.x1;
                    doll1.y = JavaFunctions.y1;
                }

            }

            function check_level()
            {
                if(JavaFunctions.count > 20 && JavaFunctions.flag==0)
                {
                    completion.visible = true;
                    completion.text= "Level-1 Complete"
                    JavaFunctions.flag=1;
                    JavaFunctions.level++;
                    timer1.stop();
                    visibility();
                    visibility1();
                    timer1.interval = 1600;
                }

                if(JavaFunctions.count >45 && JavaFunctions.flag == 1)
                {
                    completion.text= "Level-2 Complete"
                    completion.visible = true;
                    JavaFunctions.flag=2;
                    JavaFunctions.level++;
                    timer1.stop();
                    visibility();
                    visibility1();
                    timer1.interval = 1000;
                }
            }

        }


        Text{
            id: completion
            visible: false
            width: parent.width
            height: parent.height
            color: "white"
            font.pixelSize: 60
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.centerIn: platform
            anchors.horizontalCenter: platform.horizontalCenter
            anchors.verticalCenter: platform.verticalCenter


            MouseArea{
                anchors.fill: parent
                onClicked: {
                    completion.visible = false
                    gamepad.visible = true
                    timer1.start();
                }
            }
        }

        Timer{ // a timer to set the speed with which the doll appears and the number of times it appear (stores it in y)...
            id: timer1
            running: true
            interval: 2000; repeat: true
            onTriggered: {
                function_block.visibility();
                function_block.visibility1();
                function_block.check_level();
                function_block.generate_image();
            }
        }
    }
}
